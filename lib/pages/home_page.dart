import 'package:flutter/material.dart';
import 'package:open_ai/pages/question_page.dart';

class HomePage extends StatefulWidget {
  static const String id = "Homepage";

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget _buildBotIcon(String path, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        CircleAvatar(
          radius: 32,
          backgroundImage: AssetImage("assets/logo/$path"),
          backgroundColor:
              path == "gemini.png" ? Colors.black : Colors.grey.shade200,
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(fontSize: 12),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Stack(
        children: [
          ListView(
            children: [
              SizedBox(height: 150),
              Center(
                child: Column(
                  children: [
                    const Text(
                      "NOVA",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 45,
                          fontFamily: "Offside"),
                    ),
                    Container(
                      height: 60,
                      margin: EdgeInsets.symmetric(horizontal: 60),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)),
                      child: Center(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => const QuestionPage(chatName: "ChatGpt", imagePath1: "green_chat.png", imagePath2:  "green_chat.png", text: "ChatGpt bundoq baskj asdbjks sdkjs khd; dbj"),
                                    ),
                                  );

                                },
                                child: const Text(
                                  "Ask a question...",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 17),
                                ),
                              ),
                            ),
                            const Spacer(),
                            const CircleAvatar(
                              backgroundColor: Colors.grey,
                              child: Icon(
                                Icons.photo_camera,
                                color: Colors.white,
                              ),
                            ),
                            const Spacer(),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      ////////////////SCROLL SHEET/////////////
      bottomSheet: StatefulBuilder(
        builder: (context, setState) => DraggableScrollableSheet(
          initialChildSize: 0.5,
          // Adjust initial visibility
          minChildSize: 0.25,
          // Minimum visible portion
          maxChildSize: 0.5,
          // Maximum visible portion
          expand: false,
          builder: (context, scrollController) => Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: ListView(
              controller: scrollController,
              children: [
                const Center(
                  child: Text(
                    "My Bots",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildBotIcon("green_chat.png", "ChatGPT"),
                    Builder(builder: (context) {
                      return _buildBotIcon("gpt4.png", "GPT-4");
                    }),
                    _buildBotIcon("white_bg_black.png", "GPT-4o"),
                    _buildBotIcon("img.png", "Image\nGenerator"),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildBotIcon("vision_ai.png", "Vision"),
                    _buildBotIcon("audio_ai.webp", "Whisper"),
                    _buildBotIcon("gemini.png", "Google\nGemini"),
                    _buildBotIcon("pikachu.png", "Pikachu"),
                  ],
                ),
              ],
            ),

          ),
        ),
      ),
    );
  }
}
