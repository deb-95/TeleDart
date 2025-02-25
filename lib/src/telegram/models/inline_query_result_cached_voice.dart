/*
 * TeleDart - Telegram Bot API for Dart
 * Copyright (C) 2019  Dino PH Leung
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
 */

part of '../model.dart';

/// Represents a link to a voice message stored on the Telegram servers.
///
/// By default, this voice message will be sent by the user.
/// Alternatively,
/// you can use *input_message_content* to send a message with the specified content instead of the voice message.
///
/// **Note:** This will only work in Telegram versions released after 9 April, 2016.
/// Older clients will ignore them
///
/// https://core.telegram.org/bots/api#inlinequeryresultcachedvoice
@JsonSerializable()
class InlineQueryResultCachedVoice implements InlineQueryResult {
  @override
  String id;
  @override
  String type;
  String voice_file_id;
  String title;
  String? caption;
  String? parse_mode;
  List<MessageEntity>? caption_entities;
  @override
  InlineKeyboardMarkup? reply_markup;
  InputMessageContent? input_message_content;
  InlineQueryResultCachedVoice({
    required this.id,
    this.type = InlineQueryResult.VOICE,
    required this.voice_file_id,
    required this.title,
    this.caption,
    this.parse_mode,
    this.caption_entities,
    this.reply_markup,
    this.input_message_content,
  });
  factory InlineQueryResultCachedVoice.fromJson(Map<String, dynamic> json) =>
      _$InlineQueryResultCachedVoiceFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$InlineQueryResultCachedVoiceToJson(this);
}
