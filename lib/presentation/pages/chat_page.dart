import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../common/widgets/screen_loader.dart';
import '../bloc/user_chat/user_chat_bloc.dart';
import '../widgets/profile_image.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final TextEditingController _controller = TextEditingController();

  void _sendMessage() {
    if (_controller.text.trim().isEmpty) return;
    context.read<UserChatBloc>().add(
      UserChatEvent.sendMessage(_controller.text.trim()),
    );
    _controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserChatBloc, UserChatState>(
      builder: (context, state) => ScreenLoader(
        isLoading: state.isLoading,
        widget: Scaffold(
          appBar: AppBar(
            elevation: 0.5,
            title: Row(
              spacing: 10,
              children: [
                ProfileImage(
                  profileImageUrl: state.user.profileImageUrl,
                  radius: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      state.user.username,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      'Active now',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.green,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          body: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  reverse: true,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  itemCount: state.chats.length,
                  itemBuilder: (context, index) {
                    final _messages = state.chats;

                    final message = _messages[index];

                    bool showDateHeader = false;
                    if (index == _messages.length - 1) {
                      showDateHeader = true;
                    } else {
                      final prevMessage = _messages[index + 1];
                      if (message.timestamp.day != prevMessage.timestamp.day) {
                        showDateHeader = true;
                      }
                    }

                    return Column(
                      children: [
                        if (showDateHeader) _buildDateHeader(message.timestamp),
                        _ChatBubble(
                          message: ChatMessage(
                            text: message.text,
                            isMe: message.senderId == state.self.uid,
                            timestamp: message.timestamp,
                            seen: message.seen,
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              _buildInputArea(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDateHeader(DateTime date) {
    String label;
    final now = DateTime.now();
    if (date.day == now.day &&
        date.month == now.month &&
        date.year == now.year) {
      label = 'Today';
    } else if (date.day == now.subtract(const Duration(days: 1)).day) {
      label = 'Yesterday';
    } else {
      label = DateFormat.yMMMMd().format(date);
    }

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: Text(
        label,
        style: TextStyle(
          color: Colors.grey.shade500,
          fontSize: 12,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.5,
        ),
      ),
    );
  }

  Widget _buildInputArea() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        border: Border(top: BorderSide(color: Colors.grey.shade900)),
      ),
      child: SafeArea(
        child: Row(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.grey.shade900,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: TextField(
                  controller: _controller,
                  maxLines: 5,
                  minLines: 1,
                  onSubmitted: (value) => _sendMessage(),
                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    hintText: 'Message...',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 8),
            IconButton(
              onPressed: _sendMessage,
              icon: const Icon(Icons.send_rounded, color: Colors.blueAccent),
            ),
          ],
        ),
      ),
    );
  }
}

class _ChatBubble extends StatelessWidget {
  final ChatMessage message;
  const _ChatBubble({required this.message});

  @override
  Widget build(BuildContext context) {
    final bool isMe = message.isMe;

    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: isMe
            ? CrossAxisAlignment.end
            : CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 4),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.75,
            ),
            decoration: BoxDecoration(
              color: isMe ? Colors.blueAccent : Colors.grey.shade800,
              borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(20),
                topRight: const Radius.circular(20),
                bottomLeft: Radius.circular(isMe ? 20 : 4),
                bottomRight: Radius.circular(isMe ? 4 : 20),
              ),
            ),
            child: Text(
              message.text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
                height: 1.3,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 4,
              bottom: 12,
              left: 4,
              right: 4,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  DateFormat.jm().format(message.timestamp),
                  style: TextStyle(color: Colors.grey.shade600, fontSize: 11),
                ),
                if (isMe) ...[
                  const SizedBox(width: 4),
                  Icon(
                    message.seen ? Icons.done_all_rounded : Icons.done_rounded,
                    size: 14,
                    color: message.seen
                        ? Colors.blueAccent
                        : Colors.grey.shade600,
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ChatMessage {
  final String text;
  final bool isMe;
  final DateTime timestamp;
  final bool seen;

  ChatMessage({
    required this.text,
    required this.isMe,
    required this.timestamp,
    required this.seen,
  });
}
