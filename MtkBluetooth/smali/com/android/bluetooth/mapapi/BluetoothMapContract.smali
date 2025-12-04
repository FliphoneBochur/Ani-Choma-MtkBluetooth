.class public final Lcom/android/bluetooth/mapapi/BluetoothMapContract;
.super Ljava/lang/Object;
.source "BluetoothMapContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/mapapi/BluetoothMapContract$PresenceColumns;,
        Lcom/android/bluetooth/mapapi/BluetoothMapContract$PresenceState;,
        Lcom/android/bluetooth/mapapi/BluetoothMapContract$ChatStatusColumns;,
        Lcom/android/bluetooth/mapapi/BluetoothMapContract$ChatState;,
        Lcom/android/bluetooth/mapapi/BluetoothMapContract$ConvoContactColumns;,
        Lcom/android/bluetooth/mapapi/BluetoothMapContract$ConversationColumns;,
        Lcom/android/bluetooth/mapapi/BluetoothMapContract$FolderColumns;,
        Lcom/android/bluetooth/mapapi/BluetoothMapContract$EmailMessageColumns;,
        Lcom/android/bluetooth/mapapi/BluetoothMapContract$MessageColumns;,
        Lcom/android/bluetooth/mapapi/BluetoothMapContract$MessagePartColumns;,
        Lcom/android/bluetooth/mapapi/BluetoothMapContract$AccountColumns;
    }
.end annotation


# static fields
.field public static final BT_ACCOUNT_PROJECTION:[Ljava/lang/String;

.field public static final BT_CHATSTATUS_PROJECTION:[Ljava/lang/String;

.field public static final BT_CONTACT_CHATSTATE_PRESENCE_PROJECTION:[Ljava/lang/String;

.field public static final BT_CONTACT_PROJECTION:[Ljava/lang/String;

.field public static final BT_CONVERSATION_PROJECTION:[Ljava/lang/String;

.field public static final BT_FOLDER_PROJECTION:[Ljava/lang/String;

.field public static final BT_IM_ACCOUNT_PROJECTION:[Ljava/lang/String;

.field public static final BT_INSTANT_MESSAGE_PROJECTION:[Ljava/lang/String;

.field public static final BT_MESSAGE_PROJECTION:[Ljava/lang/String;

.field public static final BT_PRESENCE_PROJECTION:[Ljava/lang/String;

.field public static final DELIVERY_STATE_DELIVERED:Ljava/lang/String; = "delivered"

.field public static final DELIVERY_STATE_SENT:Ljava/lang/String; = "sent"

.field public static final EXTRA_ACCOUNT_ID:Ljava/lang/String; = "AccountId"

.field public static final EXTRA_BLUETOOTH_STATE:Ljava/lang/String; = "BluetoothState"

.field public static final EXTRA_CHAT_STATE:Ljava/lang/String; = "ChatState"

.field public static final EXTRA_CONVERSATION_ID:Ljava/lang/String; = "ConversationId"

.field public static final EXTRA_LAST_ACTIVE:Ljava/lang/String; = "LastActive"

.field public static final EXTRA_PRESENCE_STATE:Ljava/lang/String; = "PresenceState"

.field public static final EXTRA_PRESENCE_STATUS:Ljava/lang/String; = "PresenceStatus"

.field public static final EXTRA_UPDATE_ACCOUNT_ID:Ljava/lang/String; = "UpdateAccountId"

.field public static final EXTRA_UPDATE_FOLDER_ID:Ljava/lang/String; = "UpdateFolderId"

.field public static final FILE_MSG_DOWNLOAD:Ljava/lang/String; = "DOWNLOAD"

.field public static final FILE_MSG_DOWNLOAD_NO_ATTACHMENTS:Ljava/lang/String; = "DOWNLOAD_NO_ATTACHMENTS"

.field public static final FILE_MSG_NO_ATTACHMENTS:Ljava/lang/String; = "NO_ATTACHMENTS"

.field public static final FILTER_ORIGINATOR_SUBSTRING:Ljava/lang/String; = "org_sub_str"

.field public static final FILTER_PERIOD_BEGIN:Ljava/lang/String; = "t_begin"

.field public static final FILTER_PERIOD_END:Ljava/lang/String; = "t_end"

.field public static final FILTER_READ_STATUS:Ljava/lang/String; = "read"

.field public static final FILTER_RECIPIENT_SUBSTRING:Ljava/lang/String; = "rec_sub_str"

.field public static final FILTER_THREAD_ID:Ljava/lang/String; = "thread_id"

.field public static final FOLDER_ID_DELETED:J = 0x5L

.field public static final FOLDER_ID_DRAFT:J = 0x3L

.field public static final FOLDER_ID_INBOX:J = 0x1L

.field public static final FOLDER_ID_OTHER:J = 0x0L

.field public static final FOLDER_ID_OUTBOX:J = 0x4L

.field public static final FOLDER_ID_SENT:J = 0x2L

.field public static final FOLDER_NAME_DELETED:Ljava/lang/String; = "deleted"

.field public static final FOLDER_NAME_DRAFT:Ljava/lang/String; = "draft"

.field public static final FOLDER_NAME_INBOX:Ljava/lang/String; = "inbox"

.field public static final FOLDER_NAME_OTHER:Ljava/lang/String; = "other"

.field public static final FOLDER_NAME_OUTBOX:Ljava/lang/String; = "outbox"

.field public static final FOLDER_NAME_SENT:Ljava/lang/String; = "sent"

.field public static final METHOD_SET_BLUETOOTH_STATE:Ljava/lang/String; = "SetBtState"

.field public static final METHOD_SET_OWNER_STATUS:Ljava/lang/String; = "SetOwnerStatus"

.field public static final METHOD_UPDATE_FOLDER:Ljava/lang/String; = "UpdateFolder"

.field public static final PROVIDER_INTERFACE_EMAIL:Ljava/lang/String; = "android.bluetooth.action.BLUETOOTH_MAP_PROVIDER"

.field public static final PROVIDER_INTERFACE_IM:Ljava/lang/String; = "android.bluetooth.action.BLUETOOTH_MAP_IM_PROVIDER"

.field public static final RECEPTION_STATE_COMPLETE:Ljava/lang/String; = "complete"

.field public static final RECEPTION_STATE_FRACTIONED:Ljava/lang/String; = "fractioned"

.field public static final RECEPTION_STATE_NOTIFICATION:Ljava/lang/String; = "notification"

.field public static final TABLE_ACCOUNT:Ljava/lang/String; = "Account"

.field public static final TABLE_CONVERSATION:Ljava/lang/String; = "Conversation"

.field public static final TABLE_CONVOCONTACT:Ljava/lang/String; = "ConvoContact"

.field public static final TABLE_FOLDER:Ljava/lang/String; = "Folder"

.field public static final TABLE_MESSAGE:Ljava/lang/String; = "Message"

.field public static final TABLE_MESSAGE_PART:Ljava/lang/String; = "Part"


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 1082
    const-string v0, "_id"

    const-string v1, "date"

    const-string v2, "subject"

    const-string v3, "body"

    const-string v4, "message_size"

    const-string v5, "folder_id"

    const-string v6, "flag_read"

    const-string v7, "flag_protected"

    const-string v8, "high_priority"

    const-string v9, "flag_attachment"

    const-string v10, "attachment_size"

    const-string v11, "from_list"

    const-string v12, "to_list"

    const-string v13, "cc_list"

    const-string v14, "bcc_list"

    const-string v15, "reply_to_List"

    const-string v16, "reception_state"

    const-string v17, "delivery_state"

    const-string v18, "thread_id"

    filled-new-array/range {v0 .. v18}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_MESSAGE_PROJECTION:[Ljava/lang/String;

    .line 1105
    const-string v1, "_id"

    const-string v2, "date"

    const-string v3, "subject"

    const-string v4, "message_size"

    const-string v5, "folder_id"

    const-string v6, "flag_read"

    const-string v7, "flag_protected"

    const-string v8, "high_priority"

    const-string v9, "flag_attachment"

    const-string v10, "attachment_size"

    const-string v11, "attachment_mime_types"

    const-string v12, "from_list"

    const-string v13, "to_list"

    const-string v14, "reception_state"

    const-string v15, "delivery_state"

    const-string v16, "thread_id"

    const-string v17, "thread_name"

    filled-new-array/range {v1 .. v17}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_INSTANT_MESSAGE_PROJECTION:[Ljava/lang/String;

    .line 1128
    const-string v0, "_id"

    const-string v1, "account_display_name"

    const-string v2, "flag_expose"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_ACCOUNT_PROJECTION:[Ljava/lang/String;

    .line 1136
    const-string v3, "account_uci"

    const-string v4, "account_uci_PREFIX"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_IM_ACCOUNT_PROJECTION:[Ljava/lang/String;

    .line 1147
    const-string v1, "name"

    const-string v2, "account_id"

    const-string v3, "parent_id"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_FOLDER_PROJECTION:[Ljava/lang/String;

    .line 1158
    const-string v2, "thread_id"

    const-string v3, "thread_name"

    const-string v4, "read_status"

    const-string v5, "last_thread_activity"

    const-string v6, "version_counter"

    const-string v7, "convo_summary"

    const-string v8, "x_bt_uci"

    const-string v9, "name"

    const-string v10, "nickname"

    const-string v11, "chat_state"

    const-string v12, "last_active"

    const-string v13, "x_bt_uid"

    const-string v14, "presence_state"

    const-string v15, "status_text"

    const-string v16, "priority"

    filled-new-array/range {v2 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_CONVERSATION_PROJECTION:[Ljava/lang/String;

    .line 1181
    const-string v2, "x_bt_uci"

    const-string v3, "convo_id"

    const-string v4, "name"

    const-string v5, "nickname"

    const-string v6, "x_bt_uid"

    const-string v7, "chat_state"

    const-string v8, "last_active"

    const-string v9, "presence_state"

    const-string v10, "priority"

    const-string v11, "status_text"

    const-string v12, "last_online"

    filled-new-array/range {v2 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_CONTACT_CHATSTATE_PRESENCE_PROJECTION:[Ljava/lang/String;

    .line 1198
    const-string v0, "x_bt_uci"

    const-string v2, "convo_id"

    const-string v3, "x_bt_uid"

    const-string v4, "nickname"

    filled-new-array {v0, v2, v3, v1, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_CONTACT_PROJECTION:[Ljava/lang/String;

    .line 1210
    const-string v0, "chat_state"

    const-string v1, "last_active"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_CHATSTATUS_PROJECTION:[Ljava/lang/String;

    .line 1217
    const-string v0, "presence_state"

    const-string v1, "priority"

    const-string v2, "status_text"

    const-string v3, "last_online"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_PRESENCE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method public static buildAccountUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 164
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 165
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 166
    const-string v0, "Account"

    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 167
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    .line 164
    return-object p0
.end method

.method public static buildAccountUriwithId(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 176
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 177
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 178
    const-string v0, "Account"

    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 179
    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 180
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    .line 176
    return-object p0
.end method

.method public static buildConversationUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 240
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 241
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 242
    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 243
    const-string p1, "Conversation"

    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 244
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    .line 240
    return-object p0
.end method

.method public static buildConvoContactsUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 253
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 254
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 255
    const-string v0, "ConvoContact"

    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 256
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    .line 253
    return-object p0
.end method

.method public static buildConvoContactsUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 265
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 266
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 267
    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 268
    const-string p1, "ConvoContact"

    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 269
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    .line 265
    return-object p0
.end method

.method public static buildConvoContactsUriWithId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 279
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 280
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 281
    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 282
    const-string p1, "ConvoContact"

    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 283
    invoke-virtual {p0, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 284
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    .line 279
    return-object p0
.end method

.method public static buildFolderUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 227
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 228
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 229
    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 230
    const-string p1, "Folder"

    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 231
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    .line 227
    return-object p0
.end method

.method public static buildMessageUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 188
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 189
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 190
    const-string v0, "Message"

    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 191
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    .line 188
    return-object p0
.end method

.method public static buildMessageUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 200
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 201
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 202
    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 203
    const-string p1, "Message"

    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 204
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    .line 200
    return-object p0
.end method

.method public static buildMessageUriWithId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 213
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 214
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 215
    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 216
    const-string p1, "Message"

    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 217
    invoke-virtual {p0, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 218
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    .line 213
    return-object p0
.end method
