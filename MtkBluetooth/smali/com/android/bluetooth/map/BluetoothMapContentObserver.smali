.class public Lcom/android/bluetooth/map/BluetoothMapContentObserver;
.super Ljava/lang/Object;
.source "BluetoothMapContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/map/BluetoothMapContentObserver$CeBroadcastReceiver;,
        Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;,
        Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;,
        Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;,
        Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;,
        Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;
    }
.end annotation


# static fields
.field private static final ACTION_MESSAGE_DELIVERY:Ljava/lang/String; = "com.android.bluetooth.BluetoothMapContentObserver.action.MESSAGE_DELIVERY"

.field static final ACTION_MESSAGE_SENT:Ljava/lang/String; = "com.android.bluetooth.BluetoothMapContentObserver.action.MESSAGE_SENT"

.field private static final CONVERT_MMS_TO_SMS_PART_COUNT:I = 0xa

.field private static final D:Z

.field public static final DELETED_THREAD_ID:I = -0x1

.field private static final EVENT_FILTER_CONVERSATION_CHANGED:J = 0x400L

.field private static final EVENT_FILTER_DELIVERY_FAILED:J = 0x40L

.field private static final EVENT_FILTER_DELIVERY_SUCCESS:J = 0x20L

.field private static final EVENT_FILTER_MEMORY_AVAILABLE:J = 0x100L

.field private static final EVENT_FILTER_MEMORY_FULL:J = 0x80L

.field private static final EVENT_FILTER_MESSAGE_DELETED:J = 0x2L

.field private static final EVENT_FILTER_MESSAGE_REMOVED:J = 0x4000L

.field private static final EVENT_FILTER_MESSAGE_SHIFT:J = 0x4L

.field private static final EVENT_FILTER_NEW_MESSAGE:J = 0x1L

.field private static final EVENT_FILTER_PARTICIPANT_CHATSTATE_CHANGED:J = 0x1000L

.field private static final EVENT_FILTER_PARTICIPANT_PRESENCE_CHANGED:J = 0x800L

.field private static final EVENT_FILTER_READ_STATUS_CHANGED:J = 0x200L

.field private static final EVENT_FILTER_SENDING_FAILED:J = 0x10L

.field private static final EVENT_FILTER_SENDING_SUCCESS:J = 0x8L

.field private static final EVENT_TYPE_CHAT_STATE:Ljava/lang/String; = "ParticipantChatStateChanged"

.field private static final EVENT_TYPE_CONVERSATION:Ljava/lang/String; = "ConversationChanged"

.field private static final EVENT_TYPE_DELETE:Ljava/lang/String; = "MessageDeleted"

.field private static final EVENT_TYPE_DELEVERY_SUCCESS:Ljava/lang/String; = "DeliverySuccess"

.field private static final EVENT_TYPE_DELIVERY_FAILURE:Ljava/lang/String; = "DeliveryFailure"

.field private static final EVENT_TYPE_NEW:Ljava/lang/String; = "NewMessage"

.field private static final EVENT_TYPE_PRESENCE:Ljava/lang/String; = "ParticipantPresenceChanged"

.field private static final EVENT_TYPE_READ_STATUS:Ljava/lang/String; = "ReadStatusChanged"

.field private static final EVENT_TYPE_REMOVED:Ljava/lang/String; = "MessageRemoved"

.field private static final EVENT_TYPE_SENDING_FAILURE:Ljava/lang/String; = "SendingFailure"

.field private static final EVENT_TYPE_SENDING_SUCCESS:Ljava/lang/String; = "SendingSuccess"

.field private static final EVENT_TYPE_SHIFT:Ljava/lang/String; = "MessageShift"

.field public static final EXTRA_MESSAGE_SENT_HANDLE:Ljava/lang/String; = "HANDLE"

.field public static final EXTRA_MESSAGE_SENT_MSG_TYPE:Ljava/lang/String; = "type"

.field public static final EXTRA_MESSAGE_SENT_RESULT:Ljava/lang/String; = "result"

.field public static final EXTRA_MESSAGE_SENT_RETRY:Ljava/lang/String; = "retry"

.field public static final EXTRA_MESSAGE_SENT_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final EXTRA_MESSAGE_SENT_TRANSPARENT:Ljava/lang/String; = "transparent"

.field public static final EXTRA_MESSAGE_SENT_URI:Ljava/lang/String; = "uri"

.field private static final FOLDER_MMS_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FOLDER_SMS_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ID_PROJECTION:[Ljava/lang/String;

.field public static final MESSAGE_TYPE_RETRIEVE_CONF:I = 0x84

.field static final MMS_PROJECTION_SHORT:[Ljava/lang/String;

.field static final MMS_PROJECTION_SHORT_EXT:[Ljava/lang/String;

.field static final MSG_PROJECTION_SHORT:[Ljava/lang/String;

.field static final MSG_PROJECTION_SHORT_EXT:[Ljava/lang/String;

.field static final MSG_PROJECTION_SHORT_EXT2:[Ljava/lang/String;

.field private static final PROVIDER_ANR_TIMEOUT:J = 0x4e20L

.field static final SMS_PROJECTION:[Ljava/lang/String;

.field static final SMS_PROJECTION_SHORT:[Ljava/lang/String;

.field static final SMS_PROJECTION_SHORT_EXT:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "BluetoothMapContentObserver"

.field private static final UPDATE_STATUS_URI:Landroid/net/Uri;

.field private static final V:Z

.field private static final folderMms:[Ljava/lang/String;


# instance fields
.field private mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

.field private mAuthority:Ljava/lang/String;

.field private mCeBroadcastReceiver:Lcom/android/bluetooth/map/BluetoothMapContentObserver$CeBroadcastReceiver;

.field private mContactList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;",
            ">;"
        }
    .end annotation
.end field

.field private mContactUri:Landroid/net/Uri;

.field private mContext:Landroid/content/Context;

.field private mEnableSmsMms:Z

.field private volatile mEventFilter:J

.field private mFolders:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

.field private mInitialized:Z

.field private mMapEventReportVersion:I

.field private mMapSupportedFeatures:I

.field private mMasId:I

.field private mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

.field private mMessageUri:Landroid/net/Uri;

.field private mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

.field private mMsgListMms:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;"
        }
    .end annotation
.end field

.field private mMsgListMsg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;"
        }
    .end annotation
.end field

.field private mMsgListSms:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;"
        }
    .end annotation
.end field

.field private final mObserver:Landroid/database/ContentObserver;

.field private mObserverRegistered:Z

.field private mPhoneListener:Landroid/telephony/PhoneStateListener;

.field private mProviderClient:Landroid/content/ContentProviderClient;

.field private mPushMsgList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mResolver:Landroid/content/ContentResolver;

.field private mSmsBroadcastReceiver:Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;

.field private mSmsType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

.field private mStorageUnlocked:Z

.field private mTransmitEvents:Z


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 94
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    .line 95
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    .line 191
    const-string v1, "_id"

    const-string v2, "thread_id"

    const-string v3, "address"

    const-string v4, "body"

    const-string v5, "date"

    const-string v6, "read"

    const-string v7, "type"

    const-string v8, "status"

    const-string v9, "locked"

    const-string v10, "error_code"

    const-string v11, "sub_id"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->SMS_PROJECTION:[Ljava/lang/String;

    .line 205
    const-string v0, "_id"

    const-string v1, "thread_id"

    const-string v2, "type"

    const-string v3, "read"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->SMS_PROJECTION_SHORT:[Ljava/lang/String;

    .line 209
    const-string v4, "_id"

    const-string v5, "thread_id"

    const-string v6, "address"

    const-string v7, "body"

    const-string v8, "date"

    const-string v9, "read"

    const-string v10, "type"

    filled-new-array/range {v4 .. v10}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->SMS_PROJECTION_SHORT_EXT:[Ljava/lang/String;

    .line 213
    const-string v2, "m_type"

    const-string v4, "msg_box"

    filled-new-array {v0, v1, v2, v4, v3}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->MMS_PROJECTION_SHORT:[Ljava/lang/String;

    .line 217
    const-string v2, "_id"

    const-string v3, "thread_id"

    const-string v4, "m_type"

    const-string v5, "msg_box"

    const-string v6, "read"

    const-string v7, "date"

    const-string v8, "sub"

    const-string v9, "pri"

    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->MMS_PROJECTION_SHORT_EXT:[Ljava/lang/String;

    .line 228
    const-string v1, "folder_id"

    const-string v2, "flag_read"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->MSG_PROJECTION_SHORT:[Ljava/lang/String;

    .line 234
    const-string v2, "_id"

    const-string v3, "folder_id"

    const-string v4, "flag_read"

    const-string v5, "date"

    const-string v6, "subject"

    const-string v7, "from_list"

    const-string v8, "high_priority"

    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->MSG_PROJECTION_SHORT_EXT:[Ljava/lang/String;

    .line 244
    const-string v2, "_id"

    const-string v3, "folder_id"

    const-string v4, "flag_read"

    const-string v5, "date"

    const-string v6, "subject"

    const-string v7, "from_list"

    const-string v8, "high_priority"

    const-string v9, "thread_id"

    const-string v10, "thread_name"

    filled-new-array/range {v2 .. v10}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->MSG_PROJECTION_SHORT_EXT2:[Ljava/lang/String;

    .line 502
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->FOLDER_SMS_MAP:Ljava/util/HashMap;

    .line 503
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "inbox"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->FOLDER_SMS_MAP:Ljava/util/HashMap;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "sent"

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->FOLDER_SMS_MAP:Ljava/util/HashMap;

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "draft"

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->FOLDER_SMS_MAP:Ljava/util/HashMap;

    const/4 v8, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "outbox"

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->FOLDER_SMS_MAP:Ljava/util/HashMap;

    const/4 v10, 0x5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->FOLDER_SMS_MAP:Ljava/util/HashMap;

    const/4 v10, 0x6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->FOLDER_MMS_MAP:Ljava/util/HashMap;

    .line 525
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->FOLDER_MMS_MAP:Ljava/util/HashMap;

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->FOLDER_MMS_MAP:Ljava/util/HashMap;

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->FOLDER_MMS_MAP:Ljava/util/HashMap;

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    const-string v2, ""

    const-string v3, "inbox"

    const-string v4, "sent"

    const-string v5, "draft"

    const-string v6, "outbox"

    const-string v7, "outbox"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->folderMms:[Ljava/lang/String;

    .line 3356
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->ID_PROJECTION:[Ljava/lang/String;

    .line 3357
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "/status"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->UPDATE_STATUS_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/bluetooth/map/BluetoothMnsObexClient;Lcom/android/bluetooth/map/BluetoothMapMasInstance;Lcom/android/bluetooth/map/BluetoothMapAccountItem;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mProviderClient:Landroid/content/ContentProviderClient;

    .line 134
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    .line 136
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mEnableSmsMms:Z

    .line 137
    iput-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mObserverRegistered:Z

    .line 139
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAuthority:Ljava/lang/String;

    .line 142
    const/16 v2, 0x1f

    iput v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapSupportedFeatures:I

    .line 144
    const/16 v2, 0xa

    iput v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    .line 146
    new-instance v2, Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    const-string v3, "DUMMY"

    invoke-direct {v2, v3, v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;-><init>(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapFolderElement;)V

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mFolders:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 148
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMessageUri:Landroid/net/Uri;

    .line 149
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContactUri:Landroid/net/Uri;

    .line 151
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mTransmitEvents:Z

    .line 159
    const-wide v3, 0xffffffffL

    iput-wide v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mEventFilter:J

    .line 184
    new-instance v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;

    invoke-direct {v3, p0, v0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Lcom/android/bluetooth/map/BluetoothMapContentObserver$1;)V

    iput-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsBroadcastReceiver:Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;

    .line 185
    new-instance v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$CeBroadcastReceiver;

    invoke-direct {v3, p0, v0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$CeBroadcastReceiver;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Lcom/android/bluetooth/map/BluetoothMapContentObserver$1;)V

    iput-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mCeBroadcastReceiver:Lcom/android/bluetooth/map/BluetoothMapContentObserver$CeBroadcastReceiver;

    .line 187
    iput-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mStorageUnlocked:Z

    .line 188
    iput-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mInitialized:Z

    .line 468
    new-instance v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$1;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$1;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mObserver:Landroid/database/ContentObserver;

    .line 905
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListSms:Ljava/util/Map;

    .line 907
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListMms:Ljava/util/Map;

    .line 909
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListMsg:Ljava/util/Map;

    .line 911
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContactList:Ljava/util/Map;

    .line 2572
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2573
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mPushMsgList:Ljava/util/Map;

    .line 3844
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$2;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$2;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    .line 259
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    .line 260
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    .line 261
    iput-object p4, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 262
    iput-object p3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    .line 263
    invoke-virtual {p3}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->getMasId()I

    move-result p1

    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasId:I

    .line 264
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->getRemoteFeatureMask()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setObserverRemoteFeatureMask(I)V

    .line 266
    if-eqz p4, :cond_2

    .line 267
    iget-object p1, p4, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mBase_uri:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAuthority:Ljava/lang/String;

    .line 268
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p4, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mBase_uri:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Message"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMessageUri:Landroid/net/Uri;

    .line 269
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object p1

    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->IM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne p1, v0, :cond_0

    .line 270
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p4, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mBase_uri:Ljava/lang/String;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "ConvoContact"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContactUri:Landroid/net/Uri;

    .line 274
    :cond_0
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    iget-object p3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAuthority:Ljava/lang/String;

    invoke-virtual {p1, p3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mProviderClient:Landroid/content/ContentProviderClient;

    .line 275
    if-eqz p1, :cond_1

    .line 278
    const-wide/16 p3, 0x4e20

    invoke-virtual {p1, p3, p4}, Landroid/content/ContentProviderClient;->setDetectNotResponding(J)V

    .line 279
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->getContactList()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContactList:Ljava/util/Map;

    .line 280
    if-nez p1, :cond_2

    .line 281
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p1, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setContactList(Ljava/util/Map;Z)V

    .line 282
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->initContactsList()V

    goto :goto_0

    .line 276
    :cond_1
    new-instance p1, Landroid/os/RemoteException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to acquire provider for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAuthority:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 285
    :cond_2
    :goto_0
    iput-boolean p5, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mEnableSmsMms:Z

    .line 286
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getSmsType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 287
    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    .line 289
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->getMsgListSms()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListSms:Ljava/util/Map;

    .line 290
    nop

    .line 291
    iget-boolean p2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mEnableSmsMms:Z

    if-eqz p2, :cond_4

    .line 292
    if-nez p1, :cond_3

    .line 293
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p1, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setMsgListSms(Ljava/util/Map;Z)V

    .line 294
    move p1, v2

    goto :goto_1

    .line 292
    :cond_3
    move p1, v1

    .line 296
    :goto_1
    iget-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->getMsgListMms()Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListMms:Ljava/util/Map;

    .line 297
    if-nez p2, :cond_5

    .line 298
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p1, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setMsgListMms(Ljava/util/Map;Z)V

    .line 299
    move p1, v2

    goto :goto_2

    .line 291
    :cond_4
    move p1, v1

    .line 302
    :cond_5
    :goto_2
    iget-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    if-eqz p2, :cond_6

    .line 303
    iget-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->getMsgListMsg()Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListMsg:Ljava/util/Map;

    .line 304
    if-nez p2, :cond_6

    .line 305
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p1, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setMsgListMsg(Ljava/util/Map;Z)V

    .line 306
    goto :goto_3

    .line 309
    :cond_6
    move v2, p1

    :goto_3
    if-eqz v2, :cond_7

    .line 310
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->initMsgList()V

    .line 312
    :cond_7
    return-void
.end method

.method static synthetic access$1000(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Ljava/util/Map;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mPushMsgList:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1100(I)Ljava/lang/String;
    .locals 0

    .line 91
    invoke-static {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getSmsFolderName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Ljava/util/Map;
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListSms()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Landroid/content/ContentResolver;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static synthetic access$1600()[Ljava/lang/String;
    .locals 1

    .line 91
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->ID_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700()Landroid/net/Uri;
    .locals 1

    .line 91
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->UPDATE_STATUS_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 91
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->initMsgList()V

    return-void
.end method

.method static synthetic access$1900()Ljava/util/HashMap;
    .locals 1

    .line 91
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->FOLDER_SMS_MAP:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Z
    .locals 0

    .line 91
    iget-boolean p0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mStorageUnlocked:Z

    return p0
.end method

.method static synthetic access$2000(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->resendPendingMessages()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Z)Z
    .locals 0

    .line 91
    iput-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mStorageUnlocked:Z

    return p1
.end method

.method static synthetic access$300()Z
    .locals 1

    .line 91
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Landroid/net/Uri;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->handleContactListChanges(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Landroid/net/Uri;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->handleMsgListChanges(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)I
    .locals 0

    .line 91
    iget p0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    return p0
.end method

.method static synthetic access$700()Z
    .locals 1

    .line 91
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Landroid/content/Context;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static actionMessageSentDisconnected(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 2

    .line 3704
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->NONE:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 3705
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->ordinal()I

    move-result v0

    const-string v1, "type"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 3704
    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->fromOrdinal(I)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v0

    .line 3706
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne v0, v1, :cond_0

    .line 3707
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->actionMmsSent(Landroid/content/Context;Landroid/content/Intent;ILjava/util/Map;)V

    goto :goto_0

    .line 3709
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->actionSmsSentDisconnected(Landroid/content/Context;Landroid/content/Intent;I)V

    .line 3711
    :goto_0
    return-void
.end method

.method public static actionMmsSent(Landroid/content/Context;Landroid/content/Intent;ILjava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;)V"
        }
    .end annotation

    .line 3657
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v0, :cond_0

    .line 3658
    const-string v0, "BluetoothMapContentObserver"

    const-string v1, "actionMmsSent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3660
    :cond_0
    const/4 v0, 0x0

    const-string v1, "transparent"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 3661
    const-wide/16 v1, -0x1

    const-string v3, "HANDLE"

    invoke-virtual {p1, v3, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 3662
    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-gez p1, :cond_1

    .line 3663
    const-string p0, "BluetoothMapContentObserver"

    const-string p1, "Intent received for an invalid handle"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3664
    return-void

    .line 3666
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 3667
    const/4 p1, 0x1

    if-ne v0, p1, :cond_4

    .line 3674
    sget-object p1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 3676
    if-eqz p3, :cond_2

    .line 3677
    monitor-enter p3

    .line 3678
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3679
    monitor-exit p3

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 3682
    :cond_2
    :goto_0
    sget-boolean p2, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz p2, :cond_3

    .line 3683
    const-string p2, "BluetoothMapContentObserver"

    const-string p3, "Transparent in use - delete"

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3685
    :cond_3
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3686
    goto :goto_2

    :cond_4
    const/4 p1, -0x1

    if-ne p2, p1, :cond_5

    .line 3688
    const/4 p1, 0x2

    invoke-static {v1, v2, p0, p1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->moveMmsToFolder(JLandroid/content/ContentResolver;I)V

    goto :goto_2

    .line 3690
    :cond_5
    const/4 p1, 0x4

    if-eqz p3, :cond_7

    .line 3691
    monitor-enter p3

    .line 3692
    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    .line 3693
    if-eqz p2, :cond_6

    .line 3694
    iput p1, p2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    .line 3696
    :cond_6
    monitor-exit p3

    goto :goto_1

    :catchall_1
    move-exception p0

    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    .line 3699
    :cond_7
    :goto_1
    invoke-static {v1, v2, p0, p1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->moveMmsToFolder(JLandroid/content/ContentResolver;I)V

    .line 3701
    :goto_2
    return-void
.end method

.method public static actionSmsSentDisconnected(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 6

    .line 3715
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    const-string v2, "BluetoothMapContentObserver"

    if-ne v0, v1, :cond_8

    .line 3716
    const-string v0, "android.Manifest.permission.WRITE_SMS"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 3722
    :cond_0
    nop

    .line 3724
    const-string v0, "transparent"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 3725
    const-string v3, "uri"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3726
    if-nez p1, :cond_1

    .line 3728
    return-void

    .line 3730
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 3732
    const/4 v3, -0x1

    const-string v4, "Failed to move "

    const/4 v5, 0x1

    if-ne p2, v3, :cond_3

    .line 3733
    const-string p2, "actionMessageSentDisconnected: result OK"

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3734
    if-nez v0, :cond_2

    .line 3735
    invoke-static {p0, p1, v5}, Lcom/android/bluetooth/Utils;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;Z)Z

    move-result p2

    if-nez p2, :cond_5

    .line 3736
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " to SENT"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3739
    :cond_2
    move v1, v5

    goto :goto_0

    .line 3747
    :cond_3
    if-nez v0, :cond_4

    .line 3748
    invoke-static {p0, p1, v1}, Lcom/android/bluetooth/Utils;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;Z)Z

    move-result p2

    if-nez p2, :cond_5

    .line 3749
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " to FAILED"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3752
    :cond_4
    move v1, v5

    .line 3757
    :cond_5
    :goto_0
    if-eqz v1, :cond_7

    .line 3759
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 3760
    if-eqz p0, :cond_6

    .line 3761
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 3763
    :cond_6
    const-string p0, "Unable to get resolver"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3766
    :cond_7
    :goto_1
    return-void

    .line 3718
    :cond_8
    :goto_2
    const-string p0, "actionSmsSentDisconnected: Not allowed to delete SMS/MMS messages"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3719
    return-void
.end method

.method private static addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;I)Landroid/net/Uri;
    .locals 3

    .line 2592
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 2597
    if-ltz p6, :cond_0

    goto :goto_0

    .line 2598
    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result p6

    .line 2600
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Telephony addMessageToUri sub id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BluetoothMapContentObserver"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2602
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    const-string v1, "sub_id"

    invoke-virtual {v0, v1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2603
    const-string p6, "address"

    invoke-virtual {v0, p6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2604
    if-eqz p5, :cond_1

    .line 2605
    const-string p2, "date"

    invoke-virtual {v0, p2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2607
    :cond_1
    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p5, "read"

    invoke-virtual {v0, p5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2608
    const-string p2, "subject"

    invoke-virtual {v0, p2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2609
    const-string p2, "body"

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2610
    const/16 p2, 0x20

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "status"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2611
    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private deleteMessageMms(J)Z
    .locals 7

    .line 2259
    nop

    .line 2260
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 2261
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2263
    if-eqz v1, :cond_3

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2265
    const-string v2, "thread_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 2266
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 2268
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListMms()Ljava/util/Map;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2269
    :try_start_1
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListMms()Ljava/util/Map;

    move-result-object v4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    .line 2270
    if-eqz p1, :cond_0

    .line 2271
    iput v3, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->threadId:I

    .line 2273
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2274
    :try_start_2
    const-string p1, "thread_id"

    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, p1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->updateThreadId(Landroid/net/Uri;Ljava/lang/String;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 2273
    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    .line 2277
    :cond_1
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListMms()Ljava/util/Map;

    move-result-object v2

    monitor-enter v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2278
    :try_start_5
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListMms()Ljava/util/Map;

    move-result-object v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2279
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2281
    :try_start_6
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 2283
    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    .line 2279
    :catchall_1
    move-exception p1

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 2286
    :catchall_2
    move-exception p1

    if-eqz v1, :cond_2

    .line 2287
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2289
    :cond_2
    throw p1

    .line 2286
    :cond_3
    const/4 p1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    .line 2287
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2291
    :cond_4
    return p1
.end method

.method private deleteMessageSms(J)Z
    .locals 7

    .line 2346
    nop

    .line 2347
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 2348
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2350
    if-eqz v1, :cond_3

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2352
    const-string v2, "thread_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 2353
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 2354
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListSms()Ljava/util/Map;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2355
    :try_start_1
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListSms()Ljava/util/Map;

    move-result-object v4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    .line 2356
    if-eqz p1, :cond_0

    .line 2357
    iput v3, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->threadId:I

    .line 2359
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2361
    :try_start_2
    const-string p1, "thread_id"

    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, p1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->updateThreadId(Landroid/net/Uri;Ljava/lang/String;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 2359
    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    .line 2364
    :cond_1
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListSms()Ljava/util/Map;

    move-result-object v2

    monitor-enter v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2365
    :try_start_5
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListSms()Ljava/util/Map;

    move-result-object v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2366
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2368
    :try_start_6
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 2370
    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    .line 2366
    :catchall_1
    move-exception p1

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 2373
    :catchall_2
    move-exception p1

    if-eqz v1, :cond_2

    .line 2374
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2376
    :cond_2
    throw p1

    .line 2373
    :cond_3
    const/4 p1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    .line 2374
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2377
    :cond_4
    return p1
.end method

.method private failPendingMessages()V
    .locals 6

    .line 3817
    nop

    .line 3818
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->SMS_PROJECTION:[Ljava/lang/String;

    const-string v3, "type = 4"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3820
    if-eqz v0, :cond_4

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3822
    :cond_0
    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 3823
    const-string v3, "body"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 3824
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mPushMsgList:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;

    .line 3825
    if-eqz v1, :cond_2

    iget-boolean v2, v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->resend:Z

    if-nez v2, :cond_1

    .line 3826
    goto :goto_0

    .line 3828
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    iget-object v1, v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->uri:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/android/bluetooth/Utils;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;Z)Z

    .line 3829
    :cond_2
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    .line 3832
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    .line 3833
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3835
    :cond_3
    throw v1

    .line 3832
    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    .line 3833
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3837
    :cond_5
    return-void
.end method

.method private getContactList()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;",
            ">;"
        }
    .end annotation

    .line 388
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContactList:Ljava/util/Map;

    return-object v0
.end method

.method private static getMmsFolderName(I)Ljava/lang/String;
    .locals 1

    .line 532
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->FOLDER_MMS_MAP:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 533
    if-eqz p0, :cond_0

    .line 534
    return-object p0

    .line 536
    :cond_0
    const-string p0, "BluetoothMapContentObserver"

    const-string v0, "New MMS mailboxes have been introduced, without an update in BT..."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    const-string p0, "Unknown"

    return-object p0
.end method

.method private getMsgListMms()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;"
        }
    .end annotation

    .line 361
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListMms:Ljava/util/Map;

    return-object v0
.end method

.method private getMsgListMsg()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;"
        }
    .end annotation

    .line 375
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListMsg:Ljava/util/Map;

    return-object v0
.end method

.method private getMsgListSms()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;"
        }
    .end annotation

    .line 348
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListSms:Ljava/util/Map;

    return-object v0
.end method

.method private static getSmsFolderName(I)Ljava/lang/String;
    .locals 1

    .line 512
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->FOLDER_SMS_MAP:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 513
    if-eqz p0, :cond_0

    .line 514
    return-object p0

    .line 516
    :cond_0
    const-string p0, "BluetoothMapContentObserver"

    const-string v0, "New SMS mailbox types have been introduced, without an update in BT..."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    const-string p0, "Unknown"

    return-object p0
.end method

.method private getSmsType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .locals 2

    .line 455
    nop

    .line 456
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    .line 457
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 459
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 460
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    goto :goto_0

    .line 462
    :cond_0
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 465
    :goto_0
    return-object v0
.end method

.method private handleContactListChanges(Landroid/net/Uri;)V
    .locals 39

    .line 1953
    move-object/from16 v15, p0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v15, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAuthority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1955
    :try_start_0
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v0, :cond_0

    .line 1956
    const-string v0, "BluetoothMapContentObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleContactListChanges uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1958
    :cond_0
    nop

    .line 1959
    const/4 v0, 0x0

    .line 1961
    const/4 v1, 0x0

    :try_start_1
    new-instance v14, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;

    invoke-direct {v14, v15, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Lcom/android/bluetooth/map/BluetoothMapContentObserver$1;)V

    .line 1963
    iget v2, v15, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    const/16 v13, 0xa

    if-eq v2, v13, :cond_d

    iget v2, v15, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    const/16 v12, 0xb

    if-eq v2, v12, :cond_d

    .line 1965
    iget-object v3, v15, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mProviderClient:Landroid/content/ContentProviderClient;

    iget-object v4, v15, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContactUri:Landroid/net/Uri;

    sget-object v5, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_CONTACT_CHATSTATE_PRESENCE_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    .line 1968
    :try_start_2
    invoke-virtual {v14, v11}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->setConvoColunms(Landroid/database/Cursor;)V

    .line 1977
    new-instance v9, Ljava/util/HashMap;

    .line 1979
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getContactList()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v9, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 1981
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getContactList()Ljava/util/Map;

    move-result-object v16

    monitor-enter v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    .line 1982
    const/16 v17, 0x1

    if-eqz v11, :cond_a

    :try_start_3
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1984
    :goto_0
    iget v1, v14, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColUci:I

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1985
    iget v1, v14, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColConvoId:I

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    .line 1986
    const-wide/16 v1, 0x0

    cmp-long v1, v29, v1

    if-nez v1, :cond_1

    .line 1987
    move-object v1, v9

    move-object/from16 v22, v11

    move/from16 v18, v12

    move/from16 v19, v13

    move-object/from16 v23, v14

    goto/16 :goto_5

    .line 1990
    :cond_1
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v1, :cond_2

    .line 1991
    invoke-static {v11}, Lcom/android/bluetooth/map/BluetoothMapUtils;->printCursor(Landroid/database/Cursor;)V

    .line 1994
    :cond_2
    nop

    .line 1995
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getContactList()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 2003
    if-nez v8, :cond_4

    .line 2004
    nop

    .line 2009
    :try_start_4
    iget v0, v15, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    if-eq v0, v13, :cond_3

    iget v0, v15, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    if-eq v0, v12, :cond_3

    .line 2014
    iget v0, v14, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColName:I

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2015
    iget v0, v14, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColNickname:I

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 2016
    iget v0, v14, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColPresenceText:I

    .line 2017
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2018
    iget v1, v14, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColPresenceState:I

    .line 2019
    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    .line 2020
    iget v1, v14, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColLastActive:I

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 2021
    iget v3, v14, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColChatState:I

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    .line 2022
    iget v3, v14, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColPriority:I

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 2023
    iget v4, v14, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColBtUid:I

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 2041
    const/16 v33, 0x0

    .line 2050
    new-instance v4, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;

    move-object/from16 v18, v4

    move-object/from16 v19, v10

    move-object/from16 v20, v6

    move-object/from16 v22, v0

    move/from16 v23, v31

    move-wide/from16 v24, v1

    move/from16 v26, v32

    move/from16 v27, v3

    invoke-direct/range {v18 .. v28}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJIILjava/lang/String;)V

    .line 2054
    invoke-virtual {v9, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2056
    new-instance v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string v4, "ConversationChanged"

    iget-object v5, v15, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 2057
    invoke-virtual {v5}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 2058
    invoke-static {v1, v2}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getDateTimeString(J)Ljava/lang/String;

    move-result-object v18
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v1, v8

    move-object/from16 v2, p0

    move-object v3, v4

    move-object v4, v10

    move-object v10, v8

    move-object/from16 v8, v18

    move-object/from16 v34, v9

    move-object v15, v10

    move-wide/from16 v9, v29

    move-object/from16 p1, v15

    move-object v15, v11

    move-object/from16 v11, v33

    move/from16 v18, v12

    move/from16 v12, v31

    move/from16 v19, v13

    move-object v13, v0

    move-object v0, v14

    move/from16 v14, v32

    :try_start_5
    invoke-direct/range {v1 .. v14}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2062
    move-object/from16 v14, p0

    move-object/from16 v1, p1

    :try_start_6
    invoke-direct {v14, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    .line 2063
    goto :goto_1

    .line 2137
    :catchall_0
    move-exception v0

    move-object/from16 v22, v15

    move-object/from16 v15, p0

    goto/16 :goto_8

    .line 2009
    :cond_3
    move-object/from16 v34, v9

    move/from16 v18, v12

    move/from16 v19, v13

    move-object v0, v14

    move-object v14, v15

    move-object v15, v11

    .line 2129
    :goto_1
    move-object/from16 v23, v0

    move-object/from16 v22, v15

    move/from16 v0, v17

    move-object/from16 v1, v34

    move-object v15, v14

    goto/16 :goto_5

    .line 2137
    :catchall_1
    move-exception v0

    move-object v14, v15

    goto/16 :goto_6

    .line 2081
    :cond_4
    move-object/from16 v34, v9

    move/from16 v18, v12

    move/from16 v19, v13

    move-object v13, v14

    move-object v14, v15

    move-object v15, v11

    const/16 v20, 0x0

    .line 2090
    iget v1, v13, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColPresenceState:I

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 2091
    iget v1, v13, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColPresenceText:I

    .line 2092
    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2093
    invoke-virtual {v8}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->getPresenceStatus()Ljava/lang/String;

    move-result-object v1

    .line 2094
    invoke-virtual {v8}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->getPresenceAvailability()I

    move-result v2

    if-ne v2, v12, :cond_6

    .line 2095
    invoke-static {v1, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    move-object/from16 p1, v8

    move-object/from16 v21, v10

    move-object/from16 v36, v13

    move-object/from16 v23, v15

    move-object v15, v14

    goto :goto_3

    .line 2097
    :cond_6
    :goto_2
    iget v2, v13, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColLastOnline:I

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 2098
    invoke-virtual {v8, v12}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->setPresenceAvailability(I)V

    .line 2099
    invoke-virtual {v8, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->setLastActivity(J)V

    .line 2100
    if-eqz v1, :cond_7

    .line 2101
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 2102
    invoke-virtual {v8, v11}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->setPresenceStatus(Ljava/lang/String;)V

    .line 2104
    :cond_7
    new-instance v9, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string v4, "ParticipantPresenceChanged"

    iget-object v1, v14, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 2105
    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v5

    invoke-virtual {v8}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->getName()Ljava/lang/String;

    move-result-object v6

    .line 2106
    invoke-virtual {v8}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->getPriority()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 2107
    invoke-static {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getDateTimeString(J)Ljava/lang/String;

    move-result-object v21
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object v1, v9

    move-object/from16 v2, p0

    move-object v3, v4

    move-object v4, v10

    move-object/from16 p1, v8

    move-object/from16 v8, v21

    move-object/from16 v35, v9

    move-object/from16 v21, v10

    move-wide/from16 v9, v29

    move-object/from16 v24, v11

    move-object/from16 v11, v23

    move-object/from16 v36, v13

    move-object/from16 v13, v24

    move-object/from16 v23, v15

    move-object v15, v14

    move/from16 v14, v22

    :try_start_7
    invoke-direct/range {v1 .. v14}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;I)V

    .line 2110
    move-object/from16 v1, v35

    invoke-direct {v15, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    .line 2114
    :goto_3
    move-object/from16 v14, v36

    iget v1, v14, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColChatState:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-object/from16 v13, v23

    :try_start_8
    invoke-interface {v13, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 2115
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->getChatState()I

    move-result v1

    if-eq v1, v12, :cond_8

    .line 2117
    iget v1, v14, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColLastActive:I

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 2118
    move-object/from16 v11, p1

    invoke-virtual {v11, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->setLastActivity(J)V

    .line 2119
    invoke-virtual {v11, v12}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->setChatState(I)V

    .line 2120
    new-instance v9, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string v3, "ParticipantChatStateChanged"

    iget-object v4, v15, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 2121
    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v5

    invoke-virtual {v11}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->getName()Ljava/lang/String;

    move-result-object v6

    .line 2122
    invoke-virtual {v11}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->getPriority()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 2123
    invoke-static {v1, v2}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getDateTimeString(J)Ljava/lang/String;

    move-result-object v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object v1, v9

    move-object/from16 v2, p0

    move-object/from16 v4, v21

    move-object/from16 v37, v9

    move-wide/from16 v9, v29

    move-object/from16 v38, v11

    move-object/from16 v11, v20

    move/from16 v20, v12

    move/from16 v12, v22

    move-object/from16 v22, v13

    move-object/from16 v13, v23

    move-object/from16 v23, v14

    move/from16 v14, v20

    :try_start_9
    invoke-direct/range {v1 .. v14}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;I)V

    .line 2125
    move-object/from16 v1, v37

    invoke-direct {v15, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    goto :goto_4

    .line 2115
    :cond_8
    move-object/from16 v38, p1

    move-object/from16 v22, v13

    move-object/from16 v23, v14

    .line 2127
    :goto_4
    move-object/from16 v2, v21

    move-object/from16 v1, v34

    move-object/from16 v3, v38

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2129
    :goto_5
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_7

    :cond_9
    move-object v9, v1

    move/from16 v12, v18

    move/from16 v13, v19

    move-object/from16 v11, v22

    move-object/from16 v14, v23

    goto/16 :goto_0

    .line 2137
    :catchall_2
    move-exception v0

    move-object/from16 v22, v13

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object/from16 v22, v23

    goto :goto_8

    :catchall_4
    move-exception v0

    move-object/from16 v22, v15

    move-object v15, v14

    goto :goto_8

    :catchall_5
    move-exception v0

    :goto_6
    move-object/from16 v22, v11

    goto :goto_8

    .line 1982
    :cond_a
    move-object v1, v9

    move-object/from16 v22, v11

    .line 2131
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getContactList()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_b

    .line 2134
    move/from16 v0, v17

    .line 2136
    :cond_b
    invoke-direct {v15, v1, v0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setContactList(Ljava/util/Map;Z)V

    .line 2137
    monitor-exit v16
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 2139
    if-eqz v22, :cond_c

    .line 2140
    :try_start_a
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_0

    .line 2147
    :cond_c
    goto :goto_b

    .line 2137
    :catchall_6
    move-exception v0

    :goto_8
    :try_start_b
    monitor-exit v16
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    :try_start_c
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 2139
    :catchall_7
    move-exception v0

    goto :goto_9

    :catchall_8
    move-exception v0

    move-object/from16 v22, v11

    :goto_9
    move-object/from16 v1, v22

    goto :goto_a

    .line 1970
    :cond_d
    :try_start_d
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v0, :cond_e

    .line 1971
    const-string v0, "BluetoothMapContentObserver"

    const-string v2, "handleContactListChanges MAP version does notsupport convocontact notifications"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    .line 2139
    :cond_e
    nop

    .line 1974
    return-void

    .line 2139
    :catchall_9
    move-exception v0

    :goto_a
    if-eqz v1, :cond_f

    .line 2140
    :try_start_e
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2142
    :cond_f
    throw v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_0

    .line 2143
    :catch_0
    move-exception v0

    .line 2144
    iget-object v0, v15, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->restartObexServerSession()V

    .line 2145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Problems contacting the ContentProvider in mas Instance "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v15, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " restaring ObexServerSession"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMapContentObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2151
    :cond_10
    :goto_b
    return-void
.end method

.method private handleMsgListChanges(Landroid/net/Uri;)V
    .locals 3

    .line 1931
    const-string v0, "BluetoothMapContentObserver"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAuthority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1933
    :try_start_0
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v1, :cond_0

    .line 1934
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMsgListChanges: account type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v2

    .line 1935
    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1934
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->handleMsgListChangesMsg(Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1942
    goto :goto_0

    .line 1938
    :catch_0
    move-exception p1

    .line 1939
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->restartObexServerSession()V

    .line 1940
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Problems contacting the ContentProvider in mas Instance "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasId:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " restaring ObexServerSession"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1946
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mEnableSmsMms:Z

    if-eqz p1, :cond_2

    .line 1947
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->handleMsgListChangesSms()V

    .line 1948
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->handleMsgListChangesMms()V

    .line 1950
    :cond_2
    return-void
.end method

.method private handleMsgListChangesMms()V
    .locals 26

    .line 1573
    move-object/from16 v0, p0

    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v1, :cond_0

    .line 1574
    const-string v1, "BluetoothMapContentObserver"

    const-string v2, "handleMsgListChangesMms"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    :cond_0
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 1578
    nop

    .line 1580
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListMms()Ljava/util/Map;

    move-result-object v16

    monitor-enter v16

    .line 1581
    :try_start_0
    iget v1, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    const/16 v14, 0xa

    if-ne v1, v14, :cond_1

    .line 1582
    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->MMS_PROJECTION_SHORT:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v12, v1

    goto :goto_0

    .line 1584
    :cond_1
    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->MMS_PROJECTION_SHORT_EXT:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v12, v1

    .line 1588
    :goto_0
    const/16 v17, 0x1

    if-eqz v12, :cond_15

    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v1, 0x0

    .line 1590
    :goto_1
    const-string v2, "_id"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 1591
    invoke-interface {v12, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_13

    .line 1594
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1595
    const-string v2, "msg_box"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 1596
    const-string v2, "m_type"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1597
    const-string v3, "thread_id"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1600
    const-string v3, "read"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1602
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListMms()Ljava/util/Map;

    move-result-object v3

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    .line 1608
    if-nez v6, :cond_a

    .line 1610
    nop

    .line 1611
    invoke-static {v11}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMmsFolderName(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "inbox"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x84

    if-eq v2, v1, :cond_2

    .line 1614
    move-object/from16 v18, v12

    move-object/from16 v19, v15

    const/4 v15, 0x0

    goto/16 :goto_8

    .line 1616
    :cond_2
    new-instance v6, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    move-object v1, v6

    move-object/from16 v2, p0

    move-wide v3, v9

    move v5, v11

    move-object v13, v6

    move v6, v8

    move/from16 v19, v7

    invoke-direct/range {v1 .. v7}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;JIII)V

    .line 1617
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v15, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1619
    iget-boolean v1, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mTransmitEvents:Z

    if-eqz v1, :cond_9

    iget v1, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    if-eq v1, v14, :cond_9

    .line 1622
    const-string v1, "date"

    .line 1623
    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1622
    invoke-static {v1, v2}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getDateTimeString(J)Ljava/lang/String;

    move-result-object v13

    .line 1624
    const-string v1, "sub"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1625
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    move-object/from16 v20, v1

    goto :goto_3

    .line 1627
    :cond_4
    :goto_2
    iget-object v1, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v9, v10}, Lcom/android/bluetooth/map/BluetoothMapContent;->getTextPartsMms(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v1

    .line 1628
    if-nez v1, :cond_5

    .line 1629
    const-string v1, ""

    move-object/from16 v20, v1

    goto :goto_3

    .line 1628
    :cond_5
    move-object/from16 v20, v1

    .line 1632
    :goto_3
    const-string v1, "pri"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1633
    const-string v2, "BluetoothMapContentObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TEMP handleMsgListChangesMms, newMessage \'read\' state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, v19

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "priority: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1637
    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    const/16 v3, 0x89

    invoke-static {v2, v9, v10, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->getAddressMms(Landroid/content/ContentResolver;JI)Ljava/lang/String;

    move-result-object v2

    .line 1639
    if-nez v2, :cond_6

    .line 1640
    const-string v2, ""

    move-object/from16 v19, v2

    goto :goto_4

    .line 1639
    :cond_6
    move-object/from16 v19, v2

    .line 1643
    :goto_4
    const-string v2, "no"

    .line 1644
    const/16 v3, 0x82

    if-ne v1, v3, :cond_7

    .line 1645
    const-string v1, "yes"

    move-object/from16 v21, v1

    goto :goto_5

    .line 1644
    :cond_7
    move-object/from16 v21, v2

    .line 1649
    :goto_5
    iget v1, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_8

    .line 1651
    new-instance v22, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string v3, "NewMessage"

    invoke-static {v11}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMmsFolderName(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v1, v22

    move-object/from16 v2, p0

    move-wide v4, v9

    move-object v8, v13

    move-object/from16 v9, v20

    move-object/from16 v10, v19

    move-object/from16 v11, v21

    invoke-direct/range {v1 .. v11}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v18, v12

    move-object/from16 v19, v15

    const/4 v15, 0x0

    goto :goto_6

    .line 1654
    :cond_8
    new-instance v22, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string v3, "NewMessage"

    invoke-static {v11}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMmsFolderName(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    int-to-long v4, v8

    const/16 v23, 0x0

    move-object/from16 v1, v22

    move-object/from16 v2, p0

    move-wide/from16 v24, v4

    move-wide v4, v9

    move-object v8, v13

    move-object/from16 v9, v20

    move-object/from16 v10, v19

    move-object/from16 v11, v21

    move-object/from16 v18, v12

    move-object/from16 v19, v15

    const/4 v15, 0x0

    move-wide/from16 v12, v24

    move-object/from16 v14, v23

    :try_start_2
    invoke-direct/range {v1 .. v14}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 1659
    :goto_6
    move-object/from16 v1, v22

    goto :goto_7

    .line 1619
    :cond_9
    move-object/from16 v18, v12

    move-object/from16 v19, v15

    const/4 v15, 0x0

    .line 1661
    new-instance v22, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string v3, "NewMessage"

    invoke-static {v11}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMmsFolderName(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    sget-object v8, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v1, v22

    move-object/from16 v2, p0

    move-wide v4, v9

    invoke-direct/range {v1 .. v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    move-object/from16 v1, v22

    .line 1665
    :goto_7
    invoke-direct {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    .line 1666
    nop

    .line 1720
    :goto_8
    move/from16 v1, v17

    move-object/from16 v9, v19

    const/16 v8, 0xa

    goto/16 :goto_e

    .line 1668
    :cond_a
    move-object/from16 v18, v12

    move-object/from16 v19, v15

    const/4 v15, 0x0

    iget v2, v6, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    if-eq v11, v2, :cond_d

    .line 1669
    const-string v1, "BluetoothMapContentObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " old type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v6, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    nop

    .line 1672
    iget-boolean v1, v6, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->localInitiatedSend:Z

    if-nez v1, :cond_b

    .line 1674
    new-instance v12, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string v3, "MessageShift"

    invoke-static {v11}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMmsFolderName(I)Ljava/lang/String;

    move-result-object v8

    iget v1, v6, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    .line 1675
    invoke-static {v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMmsFolderName(I)Ljava/lang/String;

    move-result-object v13

    sget-object v14, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object v1, v12

    move-object/from16 v2, p0

    move-wide v4, v9

    move-object v15, v6

    move-object v6, v8

    move v8, v7

    move-object v7, v13

    move v13, v8

    move-object v8, v14

    invoke-direct/range {v1 .. v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 1676
    invoke-direct {v0, v12}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    goto :goto_9

    .line 1672
    :cond_b
    move-object v15, v6

    move v13, v7

    .line 1678
    :goto_9
    iput v11, v15, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    .line 1680
    invoke-static {v11}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMmsFolderName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sent"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-boolean v1, v15, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->localInitiatedSend:Z

    if-eqz v1, :cond_c

    .line 1684
    const/4 v12, 0x0

    iput-boolean v12, v15, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->localInitiatedSend:Z

    .line 1685
    new-instance v14, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string v3, "SendingSuccess"

    .line 1686
    invoke-static {v11}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMmsFolderName(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    sget-object v8, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object v1, v14

    move-object/from16 v2, p0

    move-wide v4, v9

    invoke-direct/range {v1 .. v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 1687
    invoke-direct {v0, v14}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    goto :goto_a

    .line 1680
    :cond_c
    const/4 v12, 0x0

    .line 1689
    :goto_a
    move/from16 v1, v17

    goto/16 :goto_c

    :cond_d
    move v13, v7

    move v12, v15

    move-object v15, v6

    iget v2, v15, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->threadId:I

    if-eq v8, v2, :cond_f

    .line 1690
    const-string v1, "BluetoothMapContentObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Message delete change: type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " old type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v15, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n    threadId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " old threadId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v15, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->threadId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    nop

    .line 1694
    const/4 v1, -0x1

    if-ne v8, v1, :cond_e

    .line 1696
    new-instance v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string v3, "MessageDeleted"

    iget v1, v15, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    .line 1697
    invoke-static {v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMmsFolderName(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    sget-object v14, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object v1, v11

    move-object/from16 v2, p0

    move-wide v4, v9

    move v12, v8

    move-object v8, v14

    invoke-direct/range {v1 .. v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 1698
    invoke-direct {v0, v11}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    .line 1699
    iput v12, v15, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->threadId:I

    .line 1700
    goto :goto_b

    .line 1701
    :cond_e
    move v12, v8

    new-instance v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string v3, "MessageShift"

    iget v1, v15, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    .line 1702
    invoke-static {v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMmsFolderName(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "deleted"

    sget-object v8, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object v1, v11

    move-object/from16 v2, p0

    move-wide v4, v9

    invoke-direct/range {v1 .. v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 1704
    invoke-direct {v0, v11}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    .line 1705
    iput v12, v15, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->threadId:I

    .line 1708
    :goto_b
    move/from16 v1, v17

    :cond_f
    :goto_c
    iget v2, v15, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->flagRead:I

    if-eq v13, v2, :cond_11

    .line 1709
    nop

    .line 1710
    iput v13, v15, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->flagRead:I

    .line 1711
    iget v1, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    const/16 v8, 0xa

    if-le v1, v8, :cond_10

    .line 1713
    new-instance v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string v3, "ReadStatusChanged"

    iget v1, v15, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    .line 1714
    invoke-static {v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMmsFolderName(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object v1, v11

    move-object/from16 v2, p0

    move-wide v4, v9

    invoke-direct/range {v1 .. v7}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 1715
    invoke-direct {v0, v11}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    .line 1718
    :cond_10
    move/from16 v1, v17

    goto :goto_d

    .line 1708
    :cond_11
    const/16 v8, 0xa

    .line 1718
    :goto_d
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v9, v19

    invoke-virtual {v9, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1720
    :goto_e
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_12

    move v13, v1

    goto :goto_10

    :cond_12
    move v14, v8

    move-object v15, v9

    move-object/from16 v12, v18

    goto/16 :goto_1

    .line 1592
    :cond_13
    move-object/from16 v18, v12

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ID is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1724
    :catchall_0
    move-exception v0

    goto :goto_f

    :catchall_1
    move-exception v0

    move-object/from16 v18, v12

    :goto_f
    if-eqz v18, :cond_14

    .line 1725
    :try_start_3
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 1727
    :cond_14
    throw v0

    .line 1588
    :cond_15
    move-object/from16 v18, v12

    move-object v9, v15

    .line 1724
    const/4 v13, 0x0

    :goto_10
    if-eqz v18, :cond_16

    .line 1725
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 1728
    :cond_16
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListMms()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_11
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    .line 1730
    new-instance v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string v3, "MessageDeleted"

    iget-wide v4, v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->id:J

    iget v1, v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    invoke-static {v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMmsFolderName(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    sget-object v8, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object v1, v11

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 1732
    invoke-direct {v0, v11}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    .line 1733
    nop

    .line 1734
    move/from16 v13, v17

    goto :goto_11

    .line 1735
    :cond_17
    invoke-direct {v0, v9, v13}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setMsgListMms(Ljava/util/Map;Z)V

    .line 1736
    monitor-exit v16

    .line 1737
    return-void

    .line 1736
    :catchall_2
    move-exception v0

    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method

.method private handleMsgListChangesMsg(Landroid/net/Uri;)V
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1740
    move-object/from16 v0, p0

    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v1, :cond_0

    .line 1741
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMsgListChangesMsg uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BluetoothMapContentObserver"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    :cond_0
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 1748
    nop

    .line 1749
    iget v1, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    const/16 v14, 0xb

    const/16 v12, 0xa

    if-ne v1, v12, :cond_1

    .line 1750
    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mProviderClient:Landroid/content/ContentProviderClient;

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMessageUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->MSG_PROJECTION_SHORT:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v13, v1

    goto :goto_0

    .line 1751
    :cond_1
    if-ne v1, v14, :cond_2

    .line 1752
    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mProviderClient:Landroid/content/ContentProviderClient;

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMessageUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->MSG_PROJECTION_SHORT_EXT:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v13, v1

    goto :goto_0

    .line 1754
    :cond_2
    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mProviderClient:Landroid/content/ContentProviderClient;

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMessageUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->MSG_PROJECTION_SHORT_EXT2:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v13, v1

    .line 1756
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListMsg()Ljava/util/Map;

    move-result-object v16

    monitor-enter v16

    .line 1758
    const/4 v9, 0x1

    if-eqz v13, :cond_15

    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v1, 0x0

    .line 1760
    :goto_1
    const-string v2, "_id"

    .line 1761
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1760
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1762
    const-string v2, "folder_id"

    .line 1763
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1762
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 1764
    const-string v2, "flag_read"

    .line 1765
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1764
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 1766
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListMsg()Ljava/util/Map;

    move-result-object v2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    .line 1767
    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mFolders:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    int-to-long v10, v5

    invoke-virtual {v2, v10, v11}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderById(J)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v2

    .line 1769
    if-eqz v2, :cond_3

    .line 1770
    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFullPath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v17, v2

    goto :goto_2

    .line 1773
    :cond_3
    const-string v2, "unknown"

    move-object/from16 v17, v2

    .line 1777
    :goto_2
    if-nez v4, :cond_7

    .line 1778
    nop

    .line 1780
    new-instance v10, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    const/4 v11, 0x0

    move-object v1, v10

    move-object/from16 v2, p0

    move-wide v3, v7

    move/from16 v18, v6

    move v6, v11

    move-wide/from16 v19, v7

    move/from16 v7, v18

    invoke-direct/range {v1 .. v7}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;JIII)V

    .line 1781
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v15, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1784
    iget v1, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    if-eq v1, v12, :cond_6

    .line 1785
    const-string v1, "date"

    .line 1786
    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 1785
    invoke-interface {v13, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getDateTimeString(J)Ljava/lang/String;

    move-result-object v8

    .line 1788
    const-string v1, "subject"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1790
    const-string v1, "from_list"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1792
    const-string v1, "no"

    .line 1793
    const-string v2, "high_priority"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v9, :cond_4

    .line 1796
    const-string v1, "yes"

    move-object/from16 v18, v1

    goto :goto_3

    .line 1793
    :cond_4
    move-object/from16 v18, v1

    .line 1798
    :goto_3
    iget v1, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    if-ne v1, v14, :cond_5

    .line 1800
    new-instance v21, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string v3, "NewMessage"

    iget-object v1, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 1801
    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v7

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    move-wide/from16 v4, v19

    move-object/from16 v6, v17

    move/from16 v22, v9

    move-object v9, v10

    move-object/from16 v23, v15

    const/4 v15, 0x0

    move-object v10, v11

    const/4 v15, 0x0

    move-object/from16 v11, v18

    invoke-direct/range {v1 .. v11}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v27, v13

    move/from16 v24, v14

    goto :goto_4

    .line 1803
    :cond_5
    move/from16 v22, v9

    move-object/from16 v23, v15

    const/4 v15, 0x0

    const-string v1, "thread_id"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 1805
    const-string v1, "thread_name"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 1807
    new-instance v26, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string v3, "NewMessage"

    iget-object v1, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 1808
    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v1, v26

    move-object/from16 v2, p0

    move-wide/from16 v4, v19

    move-object/from16 v6, v17

    move-object v9, v10

    move-object v10, v11

    move-object/from16 v11, v18

    move-object/from16 v27, v13

    move-wide/from16 v12, v24

    move/from16 v24, v14

    move-object/from16 v14, v21

    :try_start_1
    invoke-direct/range {v1 .. v14}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    move-object/from16 v21, v26

    .line 1811
    :goto_4
    move-object/from16 v1, v21

    goto :goto_5

    .line 1812
    :cond_6
    move/from16 v22, v9

    move-object/from16 v27, v13

    move/from16 v24, v14

    move-object/from16 v23, v15

    const/4 v15, 0x0

    new-instance v21, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string v3, "NewMessage"

    const/4 v7, 0x0

    sget-object v8, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    move-wide/from16 v4, v19

    move-object/from16 v6, v17

    invoke-direct/range {v1 .. v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    move-object/from16 v1, v21

    .line 1814
    :goto_5
    invoke-direct {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    .line 1815
    move/from16 v1, v22

    move-object/from16 v11, v23

    const/16 v10, 0xa

    goto/16 :goto_c

    .line 1817
    :cond_7
    move/from16 v18, v6

    move-wide/from16 v19, v7

    move/from16 v22, v9

    move-object/from16 v27, v13

    move/from16 v24, v14

    move-object/from16 v23, v15

    const/4 v15, 0x0

    iget-wide v2, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->folderId:J

    cmp-long v2, v10, v2

    if-eqz v2, :cond_10

    iget-wide v2, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->folderId:J

    const-wide/16 v6, -0x1

    cmp-long v2, v2, v6

    if-eqz v2, :cond_10

    .line 1818
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v1, :cond_8

    .line 1819
    const-string v1, "BluetoothMapContentObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new folderId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " old folderId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->folderId:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1822
    :cond_8
    iget-object v1, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mFolders:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    iget-wide v2, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->folderId:J

    .line 1823
    invoke-virtual {v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderById(J)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v1

    .line 1825
    nop

    .line 1826
    if-eqz v1, :cond_9

    .line 1827
    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFullPath()Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    goto :goto_6

    .line 1830
    :cond_9
    const-string v1, "unknown"

    move-object v7, v1

    .line 1832
    :goto_6
    iget-object v1, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mFolders:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    const-string v2, "deleted"

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderByName(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v1

    .line 1834
    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mFolders:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    const-string v3, "sent"

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderByName(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v2

    .line 1841
    if-eqz v1, :cond_b

    .line 1842
    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderId()J

    move-result-wide v5

    cmp-long v1, v5, v10

    if-nez v1, :cond_a

    .line 1844
    new-instance v9, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string v3, "MessageDeleted"

    iget-wide v5, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->id:J

    const/4 v8, 0x0

    iget-object v1, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 1846
    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v12

    move-object v1, v9

    move-object/from16 v2, p0

    move-object v13, v4

    move-wide v4, v5

    move-object v6, v7

    move-object v7, v8

    move-object v8, v12

    invoke-direct/range {v1 .. v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 1847
    invoke-direct {v0, v9}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    .line 1848
    move-wide/from16 v20, v19

    goto/16 :goto_9

    .line 1842
    :cond_a
    move-object v13, v4

    goto :goto_7

    .line 1841
    :cond_b
    move-object v13, v4

    .line 1848
    :goto_7
    if-eqz v2, :cond_e

    .line 1849
    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderId()J

    move-result-wide v1

    cmp-long v1, v1, v10

    if-nez v1, :cond_d

    iget-boolean v1, v13, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->localInitiatedSend:Z

    if-eqz v1, :cond_d

    .line 1851
    iget-boolean v1, v13, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->transparent:Z

    if-eqz v1, :cond_c

    .line 1852
    iget-object v1, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMessageUri:Landroid/net/Uri;

    .line 1853
    move-wide/from16 v8, v19

    invoke-static {v2, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 1852
    invoke-virtual {v1, v2, v15, v15}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-wide/from16 v20, v8

    goto :goto_9

    .line 1856
    :cond_c
    move-wide/from16 v8, v19

    const/4 v1, 0x0

    iput-boolean v1, v13, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->localInitiatedSend:Z

    .line 1857
    new-instance v12, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string v3, "SendingSuccess"

    iget-wide v4, v13, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->id:J

    const/4 v14, 0x0

    iget-object v1, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 1858
    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v19

    move-object v1, v12

    move-object/from16 v2, p0

    move-object v6, v7

    move-object v7, v14

    move-wide/from16 v20, v8

    move-object/from16 v8, v19

    invoke-direct/range {v1 .. v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 1859
    invoke-direct {v0, v12}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    .line 1860
    goto :goto_9

    .line 1849
    :cond_d
    move-wide/from16 v20, v19

    goto :goto_8

    .line 1848
    :cond_e
    move-wide/from16 v20, v19

    .line 1862
    :goto_8
    const-string v1, "root"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 1863
    new-instance v9, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string v3, "MessageShift"

    iget-object v1, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 1864
    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v8

    move-object v1, v9

    move-object/from16 v2, p0

    move-wide/from16 v4, v20

    move-object/from16 v6, v17

    invoke-direct/range {v1 .. v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 1865
    invoke-direct {v0, v9}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    .line 1868
    :cond_f
    :goto_9
    iput-wide v10, v13, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->folderId:J

    move/from16 v9, v22

    goto :goto_a

    .line 1817
    :cond_10
    move-object v13, v4

    move-wide/from16 v20, v19

    .line 1870
    move v9, v1

    :goto_a
    iget v1, v13, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->flagRead:I

    move/from16 v8, v18

    if-eq v8, v1, :cond_12

    .line 1871
    nop

    .line 1873
    iget v1, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    const/16 v10, 0xa

    if-le v1, v10, :cond_11

    .line 1875
    new-instance v9, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string v3, "ReadStatusChanged"

    iget-object v1, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 1876
    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v7

    move-object v1, v9

    move-object/from16 v2, p0

    move-wide/from16 v4, v20

    move-object/from16 v6, v17

    invoke-direct/range {v1 .. v7}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 1877
    invoke-direct {v0, v9}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    .line 1878
    iput v8, v13, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->flagRead:I

    .line 1882
    :cond_11
    move/from16 v9, v22

    goto :goto_b

    .line 1870
    :cond_12
    const/16 v10, 0xa

    .line 1882
    :goto_b
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v11, v23

    invoke-virtual {v11, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v9

    .line 1884
    :goto_c
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_13

    move v10, v1

    goto :goto_e

    :cond_13
    move v12, v10

    move-object v15, v11

    move/from16 v9, v22

    move/from16 v14, v24

    move-object/from16 v13, v27

    goto/16 :goto_1

    .line 1887
    :catchall_0
    move-exception v0

    goto :goto_d

    :catchall_1
    move-exception v0

    move-object/from16 v27, v13

    :goto_d
    if-eqz v27, :cond_14

    .line 1888
    :try_start_2
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 1890
    :cond_14
    throw v0

    .line 1758
    :cond_15
    move/from16 v22, v9

    move-object/from16 v27, v13

    move-object v11, v15

    const/4 v15, 0x0

    .line 1887
    const/4 v10, 0x0

    :goto_e
    if-eqz v27, :cond_16

    .line 1888
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 1892
    :cond_16
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListMsg()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    .line 1893
    iget-object v1, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mFolders:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    iget-wide v2, v10, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->folderId:J

    invoke-virtual {v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderById(J)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v1

    .line 1895
    nop

    .line 1896
    if-eqz v1, :cond_17

    .line 1897
    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFullPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_10

    .line 1899
    :cond_17
    const-string v1, "unknown"

    .line 1905
    :goto_10
    iget-boolean v2, v10, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->localInitiatedSend:Z

    if-eqz v2, :cond_19

    .line 1906
    const/4 v12, 0x0

    iput-boolean v12, v10, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->localInitiatedSend:Z

    .line 1908
    iget-boolean v2, v10, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->transparent:Z

    if-eqz v2, :cond_18

    .line 1909
    move-object v13, v15

    goto :goto_11

    .line 1908
    :cond_18
    move-object v13, v1

    .line 1911
    :goto_11
    new-instance v14, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string v3, "SendingSuccess"

    iget-wide v4, v10, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->id:J

    const/4 v7, 0x0

    iget-object v1, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 1912
    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v8

    move-object v1, v14

    move-object/from16 v2, p0

    move-object v6, v13

    invoke-direct/range {v1 .. v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 1913
    invoke-direct {v0, v14}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    move-object v6, v13

    goto :goto_12

    .line 1905
    :cond_19
    const/4 v12, 0x0

    move-object v6, v1

    .line 1918
    :goto_12
    iget-boolean v1, v10, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->transparent:Z

    if-nez v1, :cond_1a

    .line 1921
    new-instance v13, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string v3, "MessageDeleted"

    iget-wide v4, v10, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->id:J

    const/4 v7, 0x0

    iget-object v1, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 1922
    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v8

    move-object v1, v13

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 1923
    invoke-direct {v0, v13}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    .line 1925
    :cond_1a
    move/from16 v10, v22

    goto :goto_f

    .line 1926
    :cond_1b
    invoke-direct {v0, v11, v10}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setMsgListMsg(Ljava/util/Map;Z)V

    .line 1927
    monitor-exit v16

    .line 1928
    return-void

    .line 1927
    :catchall_2
    move-exception v0

    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0
.end method

.method private handleMsgListChangesSms()V
    .locals 25

    .line 1413
    move-object/from16 v0, p0

    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v1, :cond_0

    .line 1414
    const-string v1, "BluetoothMapContentObserver"

    const-string v2, "handleMsgListChangesSms"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    :cond_0
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 1418
    const/4 v1, 0x0

    .line 1421
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListSms()Ljava/util/Map;

    move-result-object v16

    monitor-enter v16

    .line 1422
    :try_start_0
    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    const/16 v14, 0xa

    if-ne v2, v14, :cond_1

    .line 1423
    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->SMS_PROJECTION_SHORT:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v12, v2

    goto :goto_0

    .line 1425
    :cond_1
    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->SMS_PROJECTION_SHORT_EXT:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v12, v2

    .line 1428
    :goto_0
    if-eqz v12, :cond_14

    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1430
    :goto_1
    const-string v2, "_id"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 1431
    invoke-interface {v12, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_12

    .line 1434
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1435
    const-string v2, "type"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 1436
    const-string v2, "thread_id"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1437
    const-string v2, "read"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1439
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListSms()Ljava/util/Map;

    move-result-object v2

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    .line 1444
    if-nez v6, :cond_a

    .line 1446
    new-instance v6, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    move-object v1, v6

    move-object/from16 v2, p0

    move-wide v3, v9

    move v5, v11

    move-object v13, v6

    move v6, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;JIII)V

    .line 1447
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v15, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1448
    nop

    .line 1450
    iget-boolean v1, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mTransmitEvents:Z

    if-eqz v1, :cond_9

    iget v1, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    if-le v1, v14, :cond_9

    .line 1453
    const-string v1, "date"

    .line 1454
    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1453
    invoke-static {v1, v2}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getDateTimeString(J)Ljava/lang/String;

    move-result-object v13

    .line 1455
    const-string v1, "body"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1456
    if-nez v1, :cond_2

    .line 1457
    const-string v1, ""

    move-object/from16 v18, v1

    goto :goto_2

    .line 1456
    :cond_2
    move-object/from16 v18, v1

    .line 1459
    :goto_2
    const-string v1, ""

    .line 1460
    nop

    .line 1461
    const/4 v7, 0x1

    if-ne v11, v7, :cond_6

    .line 1462
    const-string v1, "address"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1463
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1464
    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->getContactNameFromPhone(Ljava/lang/String;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    .line 1466
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    move-object/from16 v17, v2

    goto :goto_5

    .line 1467
    :cond_4
    :goto_3
    goto :goto_4

    .line 1470
    :cond_5
    nop

    .line 1481
    :goto_4
    move-object/from16 v17, v1

    goto :goto_5

    .line 1473
    :cond_6
    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    .line 1474
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 1476
    if-eqz v2, :cond_7

    .line 1477
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 1478
    move-object/from16 v17, v1

    goto :goto_5

    .line 1476
    :cond_7
    move-object/from16 v17, v1

    .line 1481
    :goto_5
    const-string v19, "no"

    .line 1483
    iget v1, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_8

    .line 1485
    new-instance v20, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string v3, "NewMessage"

    invoke-static {v11}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getSmsFolderName(I)Ljava/lang/String;

    move-result-object v6

    iget-object v8, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    move-wide v4, v9

    move/from16 v21, v7

    move-object v7, v8

    move-object v8, v13

    move-object/from16 v9, v18

    move-object/from16 v10, v17

    move-object/from16 v11, v19

    invoke-direct/range {v1 .. v11}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v18, v12

    move-object/from16 v19, v15

    move/from16 v17, v21

    move v15, v14

    goto :goto_6

    .line 1488
    :cond_8
    move/from16 v21, v7

    new-instance v20, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string v3, "NewMessage"

    invoke-static {v11}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getSmsFolderName(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    int-to-long v4, v8

    const/16 v22, 0x0

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    move-wide/from16 v23, v4

    move-wide v4, v9

    move-object v8, v13

    move-object/from16 v9, v18

    move-object/from16 v10, v17

    move-object/from16 v11, v19

    move-object/from16 v18, v12

    move/from16 v17, v21

    move-wide/from16 v12, v23

    move-object/from16 v19, v15

    move v15, v14

    move-object/from16 v14, v22

    :try_start_2
    invoke-direct/range {v1 .. v14}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 1492
    :goto_6
    move-object/from16 v1, v20

    goto :goto_7

    .line 1450
    :cond_9
    move-object/from16 v18, v12

    move-object/from16 v19, v15

    const/16 v17, 0x1

    move v15, v14

    .line 1494
    new-instance v20, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string v3, "NewMessage"

    invoke-static {v11}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getSmsFolderName(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v8, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    move-wide v4, v9

    invoke-direct/range {v1 .. v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    move-object/from16 v1, v20

    .line 1497
    :goto_7
    invoke-direct {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    .line 1498
    move v8, v15

    move/from16 v1, v17

    move-object/from16 v9, v19

    goto/16 :goto_c

    .line 1500
    :cond_a
    move-object/from16 v18, v12

    move-object/from16 v19, v15

    const/16 v17, 0x1

    move v15, v14

    iget v2, v6, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    if-eq v11, v2, :cond_c

    .line 1501
    nop

    .line 1502
    const-string v1, "BluetoothMapContentObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " old type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v6, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    iget v1, v6, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    invoke-static {v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getSmsFolderName(I)Ljava/lang/String;

    move-result-object v8

    .line 1504
    invoke-static {v11}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getSmsFolderName(I)Ljava/lang/String;

    move-result-object v1

    .line 1506
    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1507
    new-instance v12, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string v3, "MessageShift"

    .line 1508
    invoke-static {v11}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getSmsFolderName(I)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object v1, v12

    move-object/from16 v2, p0

    move-wide v4, v9

    move-object v15, v6

    move-object v6, v13

    move v13, v7

    move-object v7, v8

    move-object v8, v14

    invoke-direct/range {v1 .. v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 1510
    invoke-direct {v0, v12}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    goto :goto_8

    .line 1506
    :cond_b
    move-object v15, v6

    move v13, v7

    .line 1512
    :goto_8
    iput v11, v15, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    .line 1513
    move/from16 v1, v17

    goto/16 :goto_a

    :cond_c
    move-object v15, v6

    move v13, v7

    iget v2, v15, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->threadId:I

    if-eq v8, v2, :cond_e

    .line 1514
    nop

    .line 1515
    const-string v1, "BluetoothMapContentObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Message delete change: type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " old type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v15, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n    threadId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " old threadId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v15, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->threadId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    const/4 v1, -0x1

    if-ne v8, v1, :cond_d

    .line 1524
    new-instance v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string v3, "MessageDeleted"

    iget v1, v15, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    .line 1525
    invoke-static {v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getSmsFolderName(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v12, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object v1, v11

    move-object/from16 v2, p0

    move-wide v4, v9

    move v14, v8

    move-object v8, v12

    invoke-direct/range {v1 .. v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 1526
    invoke-direct {v0, v11}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    .line 1527
    iput v14, v15, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->threadId:I

    .line 1528
    goto :goto_9

    .line 1529
    :cond_d
    move v14, v8

    new-instance v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string v3, "MessageShift"

    iget v1, v15, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    .line 1530
    invoke-static {v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getSmsFolderName(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "deleted"

    iget-object v8, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object v1, v11

    move-object/from16 v2, p0

    move-wide v4, v9

    invoke-direct/range {v1 .. v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 1532
    invoke-direct {v0, v11}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    .line 1533
    iput v14, v15, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->threadId:I

    .line 1536
    :goto_9
    move/from16 v1, v17

    :cond_e
    :goto_a
    iget v2, v15, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->flagRead:I

    if-eq v13, v2, :cond_10

    .line 1537
    nop

    .line 1538
    iput v13, v15, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->flagRead:I

    .line 1539
    iget v1, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    const/16 v8, 0xa

    if-le v1, v8, :cond_f

    .line 1541
    new-instance v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string v3, "ReadStatusChanged"

    iget v1, v15, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    .line 1542
    invoke-static {v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getSmsFolderName(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object v1, v11

    move-object/from16 v2, p0

    move-wide v4, v9

    invoke-direct/range {v1 .. v7}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 1543
    invoke-direct {v0, v11}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    .line 1546
    :cond_f
    move/from16 v13, v17

    goto :goto_b

    .line 1536
    :cond_10
    const/16 v8, 0xa

    move v13, v1

    .line 1546
    :goto_b
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v9, v19

    invoke-virtual {v9, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v13

    .line 1548
    :goto_c
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_11

    goto :goto_e

    :cond_11
    move v14, v8

    move-object v15, v9

    move-object/from16 v12, v18

    goto/16 :goto_1

    .line 1432
    :cond_12
    move-object/from16 v18, v12

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ID is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1551
    :catchall_0
    move-exception v0

    goto :goto_d

    :catchall_1
    move-exception v0

    move-object/from16 v18, v12

    :goto_d
    if-eqz v18, :cond_13

    .line 1552
    :try_start_3
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 1554
    :cond_13
    throw v0

    .line 1428
    :cond_14
    move-object/from16 v18, v12

    move-object v9, v15

    const/16 v17, 0x1

    .line 1551
    :goto_e
    if-eqz v18, :cond_15

    .line 1552
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 1555
    :cond_15
    const-string v2, "MessageDeleted"

    .line 1556
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListSms()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v13, v1

    :goto_f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    .line 1558
    iget v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    const/16 v4, 0xc

    if-lt v3, v4, :cond_17

    .line 1559
    const-string v2, "MessageRemoved"

    .line 1560
    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v3, :cond_16

    const-string v3, "BluetoothMapContentObserver"

    const-string v4, " sent EVENT_TYPE_REMOVED"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    :cond_16
    move-object v11, v2

    goto :goto_10

    .line 1558
    :cond_17
    move-object v11, v2

    .line 1562
    :goto_10
    new-instance v12, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    iget-wide v4, v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->id:J

    iget v1, v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    invoke-static {v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getSmsFolderName(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v8, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object v1, v12

    move-object/from16 v2, p0

    move-object v3, v11

    invoke-direct/range {v1 .. v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 1564
    invoke-direct {v0, v12}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    .line 1565
    nop

    .line 1566
    move-object v2, v11

    move/from16 v13, v17

    goto :goto_f

    .line 1568
    :cond_18
    invoke-direct {v0, v9, v13}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setMsgListSms(Ljava/util/Map;Z)V

    .line 1569
    monitor-exit v16

    .line 1570
    return-void

    .line 1569
    :catchall_2
    move-exception v0

    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method

.method private initContactsList()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1359
    move-object/from16 v0, p0

    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v1, :cond_0

    .line 1360
    const-string v1, "BluetoothMapContentObserver"

    const-string v2, "initContactsList"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    :cond_0
    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContactUri:Landroid/net/Uri;

    if-nez v4, :cond_2

    .line 1363
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v0, :cond_1

    .line 1364
    const-string v0, "BluetoothMapContentObserver"

    const-string v1, "initContactsList() no mContactUri - nothing to init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    :cond_1
    return-void

    .line 1368
    :cond_2
    nop

    .line 1369
    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mProviderClient:Landroid/content/ContentProviderClient;

    sget-object v5, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_CONTACT_CHATSTATE_PRESENCE_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1371
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1374
    if-eqz v1, :cond_7

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1375
    new-instance v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Lcom/android/bluetooth/map/BluetoothMapContentObserver$1;)V

    .line 1376
    invoke-virtual {v3, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->setConvoColunms(Landroid/database/Cursor;)V

    .line 1378
    :goto_0
    iget v4, v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColConvoId:I

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1379
    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 1380
    move-object/from16 v16, v3

    goto :goto_1

    .line 1382
    :cond_3
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v4, :cond_4

    .line 1383
    invoke-static {v1}, Lcom/android/bluetooth/map/BluetoothMapUtils;->printCursor(Landroid/database/Cursor;)V

    .line 1385
    :cond_4
    iget v4, v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColUci:I

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1386
    iget v5, v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColName:I

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1387
    iget v5, v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColNickname:I

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1388
    iget v5, v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColPresenceText:I

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1389
    iget v5, v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColPresenceState:I

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 1390
    iget v5, v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColLastActive:I

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 1391
    iget v5, v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColChatState:I

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 1392
    iget v5, v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColPriority:I

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 1393
    iget v5, v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColBtUid:I

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1394
    new-instance v6, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;

    move-object v5, v6

    move-object/from16 v16, v3

    move-object v3, v6

    move-object v6, v4

    invoke-direct/range {v5 .. v15}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJIILjava/lang/String;)V

    .line 1398
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1399
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    move-object/from16 v3, v16

    goto :goto_0

    .line 1402
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_6

    .line 1403
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1405
    :cond_6
    throw v0

    .line 1402
    :cond_7
    :goto_2
    if-eqz v1, :cond_8

    .line 1403
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1406
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getContactList()Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 1407
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getContactList()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 1408
    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setContactList(Ljava/util/Map;Z)V

    .line 1409
    monitor-exit v1

    .line 1410
    return-void

    .line 1409
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method private initMsgList()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1259
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v0, :cond_0

    .line 1260
    const-string v0, "BluetoothMapContentObserver"

    const-string v1, "initMsgList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 1263
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_5

    .line 1267
    :cond_1
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mEnableSmsMms:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 1268
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1272
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->SMS_PROJECTION_SHORT:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1276
    nop

    .line 1279
    if-eqz v2, :cond_4

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1281
    :cond_2
    const-string v3, "_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 1282
    const-string v3, "type"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1283
    const-string v3, "thread_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1284
    const-string v3, "read"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 1286
    new-instance v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    move-object v4, v3

    move-object v5, p0

    move-wide v6, v11

    invoke-direct/range {v4 .. v10}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;JIII)V

    .line 1287
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1288
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_2

    goto :goto_0

    .line 1291
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_3

    .line 1292
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1294
    :cond_3
    throw v0

    .line 1291
    :cond_4
    :goto_0
    if-eqz v2, :cond_5

    .line 1292
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1296
    :cond_5
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListSms()Ljava/util/Map;

    move-result-object v2

    monitor-enter v2

    .line 1297
    :try_start_2
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListSms()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 1298
    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setMsgListSms(Ljava/util/Map;Z)V

    .line 1299
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1301
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1303
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->MMS_PROJECTION_SHORT:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1305
    if-eqz v2, :cond_8

    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1307
    :cond_6
    const-string v3, "_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 1308
    const-string v3, "msg_box"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1309
    const-string v3, "thread_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1310
    const-string v3, "read"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 1312
    new-instance v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    move-object v4, v3

    move-object v5, p0

    move-wide v6, v11

    invoke-direct/range {v4 .. v10}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;JIII)V

    .line 1313
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1314
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v3, :cond_6

    goto :goto_1

    .line 1317
    :catchall_1
    move-exception v0

    if-eqz v2, :cond_7

    .line 1318
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1320
    :cond_7
    throw v0

    .line 1317
    :cond_8
    :goto_1
    if-eqz v2, :cond_9

    .line 1318
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1322
    :cond_9
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListMms()Ljava/util/Map;

    move-result-object v3

    monitor-enter v3

    .line 1323
    :try_start_4
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListMms()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 1324
    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setMsgListMms(Ljava/util/Map;Z)V

    .line 1325
    monitor-exit v3

    goto :goto_2

    :catchall_2
    move-exception v0

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    .line 1299
    :catchall_3
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    .line 1273
    :catch_0
    move-exception v0

    .line 1274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to initialize the list of messages: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMapContentObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    return-void

    .line 1328
    :cond_a
    :goto_2
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    if-eqz v0, :cond_f

    .line 1329
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1330
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMessageUri:Landroid/net/Uri;

    .line 1331
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mProviderClient:Landroid/content/ContentProviderClient;

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->MSG_PROJECTION_SHORT:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1334
    if-eqz v2, :cond_d

    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1336
    :cond_b
    const-string v3, "_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 1337
    const-string v3, "folder_id"

    .line 1338
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 1337
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v8, v3

    .line 1339
    const-string v3, "flag_read"

    .line 1340
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 1339
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 1341
    new-instance v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    move-object v4, v3

    move-object v5, p0

    move-wide v6, v11

    invoke-direct/range {v4 .. v10}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;JJI)V

    .line 1342
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1343
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-nez v3, :cond_b

    goto :goto_3

    .line 1346
    :catchall_4
    move-exception v0

    if-eqz v2, :cond_c

    .line 1347
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1349
    :cond_c
    throw v0

    .line 1346
    :cond_d
    :goto_3
    if-eqz v2, :cond_e

    .line 1347
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1351
    :cond_e
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListMsg()Ljava/util/Map;

    move-result-object v2

    monitor-enter v2

    .line 1352
    :try_start_7
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListMsg()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 1353
    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setMsgListMsg(Ljava/util/Map;Z)V

    .line 1354
    monitor-exit v2

    goto :goto_4

    :catchall_5
    move-exception v0

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    throw v0

    .line 1356
    :cond_f
    :goto_4
    return-void

    .line 1264
    :cond_10
    :goto_5
    return-void
.end method

.method private moveDraftToOutbox(J)V
    .locals 2

    .line 2974
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x4

    invoke-static {p1, p2, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->moveMmsToFolder(JLandroid/content/ContentResolver;I)V

    .line 2975
    return-void
.end method

.method private static moveMmsToFolder(JLandroid/content/ContentResolver;I)V
    .locals 8

    .line 2985
    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-eqz v0, :cond_4

    .line 2986
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " _id= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2987
    sget-object p1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    .line 2988
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p2

    move-object v3, p1

    move-object v5, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2990
    const-string v1, "BluetoothMapContentObserver"

    if-eqz v0, :cond_1

    .line 2991
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 2992
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2993
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2995
    const-string v3, "msg_box"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2996
    const/4 v3, 0x0

    invoke-virtual {p2, p1, v2, p0, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2997
    sget-boolean p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz p0, :cond_0

    .line 2998
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "moved MMS message to "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMmsFolderName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3000
    :cond_0
    goto :goto_0

    .line 3005
    :catchall_0
    move-exception p0

    goto :goto_1

    .line 3002
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Could not move MMS message to "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMmsFolderName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3005
    :cond_2
    :goto_0
    if-eqz v0, :cond_4

    .line 3006
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 3005
    :goto_1
    if-eqz v0, :cond_3

    .line 3006
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3008
    :cond_3
    throw p0

    .line 3010
    :cond_4
    :goto_2
    return-void
.end method

.method private pushMmsToFolder(I[Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapbMessageMime;J)J
    .locals 16

    .line 3025
    move-object/from16 v8, p0

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 3026
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "msg_box"

    invoke-virtual {v9, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3027
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "read"

    invoke-virtual {v9, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3028
    const-string v1, "seen"

    invoke-virtual {v9, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3029
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->getSubject()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3030
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->getSubject()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sub"

    invoke-virtual {v9, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3032
    :cond_0
    const-string v1, "sub"

    const-string v2, ""

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3035
    :goto_0
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->getSubject()Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x6a

    if-eqz v1, :cond_1

    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->getSubject()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 3036
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sub_cs"

    invoke-virtual {v9, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3038
    :cond_1
    const-string v1, "ct_t"

    const-string v2, "application/vnd.wap.multipart.related"

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3039
    const v1, 0x93a80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "exp"

    invoke-virtual {v9, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3040
    const-string v1, "m_cls"

    const-string v2, "personal"

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3041
    const/16 v1, 0x80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "m_type"

    invoke-virtual {v9, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3042
    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "v"

    invoke-virtual {v9, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3043
    const/16 v1, 0x81

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "pri"

    invoke-virtual {v9, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3044
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "rr"

    invoke-virtual {v9, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3045
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "T"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "tr_id"

    invoke-virtual {v9, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3046
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "d_rpt"

    invoke-virtual {v9, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3047
    const-string v1, "locked"

    invoke-virtual {v9, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3049
    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "sub_id"

    invoke-virtual {v9, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3051
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->getTextOnly()Z

    move-result v0

    const/4 v11, 0x1

    if-eqz v0, :cond_2

    .line 3052
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "text_only"

    invoke-virtual {v9, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3054
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->getSize()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "m_size"

    invoke-virtual {v9, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3057
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 3058
    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 3059
    iget-object v1, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "thread_id"

    invoke-virtual {v9, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3060
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    .line 3062
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListMms()Ljava/util/Map;

    move-result-object v12

    monitor-enter v12

    .line 3064
    :try_start_0
    iget-object v1, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, v0, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 3066
    if-nez v0, :cond_3

    .line 3068
    const-string v1, "BluetoothMapContentObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unabled to insert MMS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "Uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3069
    const-wide/16 v0, -0x1

    monitor-exit v12

    return-wide v0

    .line 3074
    :cond_3
    iget-object v2, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->MMS_PROJECTION_SHORT:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3076
    if-eqz v13, :cond_5

    :try_start_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3077
    const-string v1, "_id"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 3078
    const-string v1, "msg_box"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 3079
    const-string v1, "thread_id"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 3080
    const-string v1, "read"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 3085
    new-instance v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    move-object v1, v3

    move-object/from16 v2, p0

    move-object v10, v3

    move-wide v3, v14

    invoke-direct/range {v1 .. v7}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;JIII)V

    .line 3086
    iput-boolean v11, v10, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->localInitiatedSend:Z

    .line 3087
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListMms()Ljava/util/Map;

    move-result-object v1

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3088
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 3091
    :catchall_0
    move-exception v0

    if-eqz v13, :cond_4

    .line 3092
    :try_start_2
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 3094
    :cond_4
    throw v0

    .line 3091
    :cond_5
    :goto_1
    if-eqz v13, :cond_6

    .line 3092
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 3095
    :cond_6
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3097
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 3098
    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v3, :cond_7

    .line 3099
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " NEW URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BluetoothMapContentObserver"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3103
    :cond_7
    :try_start_3
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->getMimeParts()Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_8

    .line 3106
    const-string v0, "BluetoothMapContentObserver"

    const-string v3, "No MMS parts present..."

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 3108
    :cond_8
    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v3, :cond_9

    .line 3109
    const-string v3, "BluetoothMapContentObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->getMimeParts()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " parts to the data base."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3112
    :cond_9
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->getMimeParts()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;

    .line 3113
    nop

    .line 3114
    nop

    .line 3115
    invoke-virtual {v9}, Landroid/content/ContentValues;->clear()V

    .line 3116
    iget-object v5, v4, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentType:Ljava/lang/String;

    if-eqz v5, :cond_10

    iget-object v5, v4, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentType:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "TEXT"

    .line 3117
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 3118
    const-string v0, "ct"

    const-string v5, "text/plain"

    invoke-virtual {v9, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3119
    const-string v0, "chset"

    const/16 v5, 0x6a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v9, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3120
    iget-object v0, v4, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mPartName:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 3121
    const-string v0, "fn"

    iget-object v5, v4, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mPartName:Ljava/lang/String;

    invoke-virtual {v9, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3122
    const-string v0, "name"

    iget-object v5, v4, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mPartName:Ljava/lang/String;

    invoke-virtual {v9, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 3124
    :cond_a
    const-string v0, "fn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "text_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ".txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3125
    const-string v0, "name"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "text_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ".txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3128
    :goto_3
    iget-object v0, v4, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentId:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 3129
    const-string v0, "cid"

    iget-object v5, v4, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentId:Ljava/lang/String;

    invoke-virtual {v9, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 3131
    :cond_b
    iget-object v0, v4, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mPartName:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 3132
    const-string v0, "cid"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mPartName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 3134
    :cond_c
    const-string v0, "cid"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<text_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3138
    :goto_4
    iget-object v0, v4, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentLocation:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 3139
    const-string v0, "cl"

    iget-object v5, v4, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentLocation:Ljava/lang/String;

    invoke-virtual {v9, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 3141
    :cond_d
    iget-object v0, v4, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mPartName:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 3142
    const-string v0, "cl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v4, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mPartName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 3144
    :cond_e
    const-string v0, "cl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "text_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ".txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3148
    :goto_5
    iget-object v0, v4, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentDisposition:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 3149
    const-string v0, "cd"

    iget-object v5, v4, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentDisposition:Ljava/lang/String;

    invoke-virtual {v9, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3151
    :cond_f
    const-string v0, "text"

    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->getDataAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "/part"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3153
    iget-object v5, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v5, v0, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 3154
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v5, :cond_15

    .line 3155
    const-string v5, "BluetoothMapContentObserver"

    const-string v6, "Added TEXT part"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 3158
    :cond_10
    iget-object v5, v4, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentType:Ljava/lang/String;

    if-eqz v5, :cond_14

    iget-object v5, v4, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentType:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SMIL"

    .line 3159
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 3160
    const-string v0, "seq"

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3161
    const-string v0, "ct"

    const-string v5, "application/smil"

    invoke-virtual {v9, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3162
    iget-object v0, v4, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentId:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 3163
    const-string v0, "cid"

    iget-object v5, v4, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentId:Ljava/lang/String;

    invoke-virtual {v9, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 3165
    :cond_11
    const-string v0, "cid"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<smil_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3167
    :goto_6
    iget-object v0, v4, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentLocation:Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 3168
    const-string v0, "cl"

    iget-object v5, v4, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentLocation:Ljava/lang/String;

    invoke-virtual {v9, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 3170
    :cond_12
    const-string v0, "cl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "smil_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ".xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3173
    :goto_7
    iget-object v0, v4, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentDisposition:Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 3174
    const-string v0, "cd"

    iget-object v5, v4, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentDisposition:Ljava/lang/String;

    invoke-virtual {v9, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3176
    :cond_13
    const-string v0, "fn"

    const-string v5, "smil.xml"

    invoke-virtual {v9, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3177
    const-string v0, "name"

    const-string v5, "smil.xml"

    invoke-virtual {v9, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3178
    const-string v0, "text"

    new-instance v5, Ljava/lang/String;

    iget-object v6, v4, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mData:[B

    const-string v7, "UTF-8"

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v9, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "/part"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3181
    iget-object v5, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v5, v0, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 3182
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v5, :cond_15

    .line 3183
    const-string v5, "BluetoothMapContentObserver"

    const-string v6, "Added SMIL part"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 3187
    :cond_14
    invoke-direct {v8, v1, v2, v4, v11}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->writeMmsDataPart(JLcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;I)V

    .line 3188
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v5, :cond_15

    .line 3189
    const-string v5, "BluetoothMapContentObserver"

    const-string v6, "Added OTHER part"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3192
    :cond_15
    :goto_8
    if-eqz v0, :cond_16

    .line 3193
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v5, :cond_16

    .line 3194
    const-string v5, "BluetoothMapContentObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Added part with content-type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentType:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to Uri: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3195
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3194
    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 3198
    :cond_16
    goto/16 :goto_2

    .line 3202
    :catch_0
    move-exception v0

    .line 3203
    const-string v3, "BluetoothMapContentObserver"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 3200
    :catch_1
    move-exception v0

    .line 3201
    const-string v3, "BluetoothMapContentObserver"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3204
    :cond_17
    :goto_9
    nop

    .line 3206
    :goto_a
    invoke-virtual {v9}, Landroid/content/ContentValues;->clear()V

    .line 3207
    const-string v0, "contact_id"

    const-string v3, "null"

    invoke-virtual {v9, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3208
    const-string v0, "address"

    const-string v3, "insert-address-token"

    invoke-virtual {v9, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3209
    const/16 v0, 0x89

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "type"

    invoke-virtual {v9, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3210
    const/16 v3, 0x6a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "charset"

    invoke-virtual {v9, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "/addr"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3213
    iget-object v3, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v3, v0, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 3214
    if-eqz v0, :cond_18

    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v3, :cond_18

    .line 3215
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " NEW URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "BluetoothMapContentObserver"

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3218
    :cond_18
    invoke-virtual {v9}, Landroid/content/ContentValues;->clear()V

    .line 3219
    const-string v0, "contact_id"

    const-string v3, "null"

    invoke-virtual {v9, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3220
    const-string v0, ","

    move-object/from16 v3, p2

    invoke-static {v0, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "address"

    invoke-virtual {v9, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3221
    const/16 v0, 0x97

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "type"

    invoke-virtual {v9, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3222
    const/16 v3, 0x6a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "charset"

    invoke-virtual {v9, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "/addr"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3225
    iget-object v3, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v3, v0, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 3226
    if-eqz v0, :cond_19

    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v3, :cond_19

    .line 3227
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " NEW URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "BluetoothMapContentObserver"

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3229
    :cond_19
    return-wide v1

    .line 3095
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method private queryNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 3937
    nop

    .line 3938
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 3939
    return-object v1

    .line 3943
    :cond_0
    nop

    .line 3944
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 3945
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mimetype=\'vnd.android.cursor.item/name\' AND data1=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3949
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string p2, "raw_contact_id"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    .line 3952
    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz p2, :cond_2

    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ne v2, v9, :cond_2

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3953
    invoke-interface {p2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3956
    :catchall_0
    move-exception p1

    if-eqz p2, :cond_1

    .line 3957
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 3959
    :cond_1
    throw p1

    .line 3956
    :cond_2
    move-object v2, v1

    :goto_0
    if-eqz p2, :cond_3

    .line 3957
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 3963
    :cond_3
    nop

    .line 3967
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "data1"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v4

    new-array v6, v9, [Ljava/lang/String;

    aput-object v2, v6, v8

    const/4 v7, 0x0

    const-string v5, "mimetype=\'vnd.android.cursor.item/phone_v2\' AND raw_contact_id=?"

    move-object v2, p1

    move-object v3, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 3971
    if-eqz p1, :cond_5

    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-ne p2, v9, :cond_5

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 3972
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 3975
    :catchall_1
    move-exception p2

    if-eqz p1, :cond_4

    .line 3976
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 3978
    :cond_4
    throw p2

    .line 3975
    :cond_5
    :goto_1
    if-eqz p1, :cond_6

    .line 3976
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 3979
    :cond_6
    return-object v1
.end method

.method private registerPhoneServiceStateListener()V
    .locals 3

    .line 3769
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    .line 3770
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 3771
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 3772
    return-void
.end method

.method private removeDeletedMessages()V
    .locals 4

    .line 3841
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "thread_id = -1"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3842
    return-void
.end method

.method private resendPendingMessages()V
    .locals 7

    .line 3782
    nop

    .line 3783
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 3784
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 3787
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->SMS_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v4, "type = 4"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3789
    if-eqz v0, :cond_5

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3791
    :cond_1
    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 3792
    const-string v3, "body"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3794
    const-string v4, "sub_id"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 3796
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mPushMsgList:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;

    .line 3797
    if-eqz v1, :cond_3

    iget-boolean v2, v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->resend:Z

    if-eqz v2, :cond_3

    iget-boolean v2, v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->sendInProgress:Z

    if-eqz v2, :cond_2

    .line 3798
    goto :goto_0

    .line 3800
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->sendInProgress:Z

    .line 3802
    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendMessage(Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;Ljava/lang/String;J)V

    .line 3804
    :cond_3
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    goto :goto_1

    .line 3807
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_4

    .line 3808
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3810
    :cond_4
    throw v1

    .line 3807
    :cond_5
    :goto_1
    if-eqz v0, :cond_6

    .line 3808
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3813
    :cond_6
    return-void

    .line 3785
    :cond_7
    :goto_2
    return-void
.end method

.method private sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V
    .locals 6

    .line 1138
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mTransmitEvents:Z

    const-string v1, "BluetoothMapContentObserver"

    if-nez v0, :cond_1

    .line 1139
    sget-boolean p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz p1, :cond_0

    .line 1140
    const-string p1, "mTransmitEvents == false - don\'t send event."

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    :cond_0
    return-void

    .line 1145
    :cond_1
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v0, :cond_2

    .line 1146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendEvent: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->handle:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->folder:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->oldFolder:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->msgType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 1147
    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->datetime:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->subject:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->senderName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->priority:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1146
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_1

    .line 1157
    :cond_3
    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mEventFilter:J

    .line 1162
    iget-object v0, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    const-string v4, "NewMessage"

    invoke-static {v0, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v4, "Skip sending event of type: "

    if-eqz v0, :cond_5

    .line 1163
    invoke-static {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEventNewMessage(J)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1164
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v0, :cond_4

    .line 1165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    :cond_4
    return-void

    .line 1169
    :cond_5
    iget-object v0, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    const-string v5, "MessageDeleted"

    invoke-static {v0, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1170
    invoke-static {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEventMessageDeleted(J)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1171
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v0, :cond_6

    .line 1172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    :cond_6
    return-void

    .line 1176
    :cond_7
    iget-object v0, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    const-string v5, "MessageRemoved"

    invoke-static {v0, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1177
    invoke-static {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEventMessageRemoved(J)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1178
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v0, :cond_8

    .line 1179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    :cond_8
    return-void

    .line 1183
    :cond_9
    iget-object v0, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    const-string v5, "MessageShift"

    invoke-static {v0, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1184
    invoke-static {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEventMessageShift(J)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1185
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v0, :cond_a

    .line 1186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    :cond_a
    return-void

    .line 1190
    :cond_b
    iget-object v0, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    const-string v5, "DeliverySuccess"

    invoke-static {v0, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1191
    invoke-static {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEventDeliverySuccess(J)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1192
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v0, :cond_c

    .line 1193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    :cond_c
    return-void

    .line 1197
    :cond_d
    iget-object v0, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    const-string v5, "SendingSuccess"

    invoke-static {v0, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1198
    invoke-static {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEventSendingSuccess(J)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1199
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v0, :cond_e

    .line 1200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    :cond_e
    return-void

    .line 1204
    :cond_f
    iget-object v0, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    const-string v5, "SendingFailure"

    invoke-static {v0, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1205
    invoke-static {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEventSendingFailed(J)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1206
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v0, :cond_10

    .line 1207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    :cond_10
    return-void

    .line 1211
    :cond_11
    iget-object v0, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    const-string v5, "DeliveryFailure"

    invoke-static {v0, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1212
    invoke-static {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEventDeliveryFailed(J)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1213
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v0, :cond_12

    .line 1214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    :cond_12
    return-void

    .line 1218
    :cond_13
    iget-object v0, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    const-string v5, "ReadStatusChanged"

    invoke-static {v0, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1219
    invoke-static {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEventReadStatusChanged(J)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1220
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v0, :cond_14

    .line 1221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    :cond_14
    return-void

    .line 1225
    :cond_15
    iget-object v0, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    const-string v5, "ConversationChanged"

    invoke-static {v0, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1226
    invoke-static {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEventConversationChanged(J)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1227
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v0, :cond_16

    .line 1228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    :cond_16
    return-void

    .line 1232
    :cond_17
    iget-object v0, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    const-string v5, "ParticipantPresenceChanged"

    invoke-static {v0, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1233
    invoke-static {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEventParticipantPresenceChanged(J)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1234
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v0, :cond_18

    .line 1235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    :cond_18
    return-void

    .line 1239
    :cond_19
    iget-object v0, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    const-string v5, "ParticipantChatStateChanged"

    invoke-static {v0, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1240
    invoke-static {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEventParticipantChatstateChanged(J)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1241
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v0, :cond_1a

    .line 1242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    :cond_1a
    return-void

    .line 1249
    :cond_1b
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->encode()[B

    move-result-object p1

    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasId:I

    invoke-virtual {v0, p1, v2}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->sendEvent([BI)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1255
    goto :goto_0

    .line 1250
    :catch_0
    move-exception p1

    .line 1252
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v0, :cond_1c

    .line 1253
    const-string v0, "Exception - should not happen: "

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1256
    :cond_1c
    :goto_0
    return-void

    .line 1152
    :cond_1d
    :goto_1
    const-string p1, "sendEvent: No MNS client registered or connected- don\'t send event"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    return-void
.end method

.method private static sendEventConversationChanged(J)Z
    .locals 2

    .line 439
    const-wide/16 v0, 0x400

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static sendEventDeliveryFailed(J)Z
    .locals 2

    .line 431
    const-wide/16 v0, 0x40

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static sendEventDeliverySuccess(J)Z
    .locals 2

    .line 427
    const-wide/16 v0, 0x20

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static sendEventMessageDeleted(J)Z
    .locals 2

    .line 411
    const-wide/16 v0, 0x2

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static sendEventMessageRemoved(J)Z
    .locals 2

    .line 451
    const-wide/16 v0, 0x4000

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static sendEventMessageShift(J)Z
    .locals 2

    .line 415
    const-wide/16 v0, 0x4

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static sendEventNewMessage(J)Z
    .locals 2

    .line 407
    const-wide/16 v0, 0x1

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static sendEventParticipantChatstateChanged(J)Z
    .locals 2

    .line 447
    const-wide/16 v0, 0x1000

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static sendEventParticipantPresenceChanged(J)Z
    .locals 2

    .line 443
    const-wide/16 v0, 0x800

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static sendEventReadStatusChanged(J)Z
    .locals 2

    .line 435
    const-wide/16 v0, 0x200

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static sendEventSendingFailed(J)Z
    .locals 2

    .line 423
    const-wide/16 v0, 0x10

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static sendEventSendingSuccess(J)Z
    .locals 2

    .line 419
    const-wide/16 v0, 0x8

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setContactList(Ljava/util/Map;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;",
            ">;Z)V"
        }
    .end annotation

    .line 399
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContactList:Ljava/util/Map;

    .line 400
    if-eqz p2, :cond_0

    .line 401
    iget-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->updateImEmailConvoListVersionCounter()V

    .line 403
    :cond_0
    iget-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {p2, p1}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->setContactList(Ljava/util/Map;)V

    .line 404
    return-void
.end method

.method private setEmailMessageStatusDelete(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Ljava/lang/String;JI)Z
    .locals 18

    .line 2155
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    move/from16 v4, p5

    .line 2156
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v6, p2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Message"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 2158
    nop

    .line 2159
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 2160
    iget-object v7, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mFolders:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 2161
    const-string v8, "deleted"

    invoke-virtual {v7, v8}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderByName(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v7

    .line 2162
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v9, "_id"

    invoke-virtual {v6, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2163
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListMsg()Ljava/util/Map;

    move-result-object v8

    monitor-enter v8

    .line 2164
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListMsg()Ljava/util/Map;

    move-result-object v9

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    .line 2165
    const-wide/16 v10, -0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-ne v4, v12, :cond_4

    .line 2167
    nop

    .line 2168
    if-eqz v7, :cond_0

    .line 2169
    invoke-virtual {v7}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderId()J

    move-result-wide v10

    .line 2171
    :cond_0
    const-string v7, "folder_id"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v6, v7, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2172
    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v5, v6, v13, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 2175
    if-lez v0, :cond_2

    .line 2176
    nop

    .line 2177
    if-eqz v9, :cond_1

    .line 2178
    iget-wide v5, v9, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->folderId:J

    iput-wide v5, v9, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->oldFolderId:J

    .line 2181
    iput-wide v10, v9, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->folderId:J

    .line 2183
    :cond_1
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v0, :cond_3

    .line 2184
    const-string v0, "BluetoothMapContentObserver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleted MSG: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " from folderId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2187
    :cond_2
    const-string v0, "BluetoothMapContentObserver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Msg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " - Set delete status "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " failed for folderId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    .line 2190
    :cond_3
    :goto_0
    goto :goto_2

    :cond_4
    if-nez v4, :cond_a

    .line 2193
    if-eqz v9, :cond_a

    if-eqz v7, :cond_a

    iget-wide v14, v9, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->folderId:J

    .line 2194
    invoke-virtual {v7}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderId()J

    move-result-wide v16

    cmp-long v7, v14, v16

    if-nez v7, :cond_a

    .line 2196
    nop

    .line 2197
    const-string v7, "inbox"

    .line 2198
    invoke-virtual {v1, v7}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderByName(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v7

    .line 2199
    if-eqz v9, :cond_5

    iget-wide v14, v9, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->oldFolderId:J

    cmp-long v14, v14, v10

    if-eqz v14, :cond_5

    .line 2200
    iget-wide v10, v9, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->oldFolderId:J

    goto :goto_1

    .line 2202
    :cond_5
    if-eqz v7, :cond_6

    .line 2203
    invoke-virtual {v7}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderId()J

    move-result-wide v10

    .line 2205
    :cond_6
    sget-boolean v14, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v14, :cond_7

    .line 2206
    const-string v14, "BluetoothMapContentObserver"

    const-string v15, "We did not delete the message, hence the old folder is unknown. Moving to inbox."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2210
    :cond_7
    :goto_1
    const-string v14, "folder_id"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v6, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2211
    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v5, v6, v13, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 2212
    if-lez v0, :cond_9

    .line 2213
    nop

    .line 2220
    if-eqz v7, :cond_8

    .line 2221
    invoke-virtual {v7}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderId()J

    move-result-wide v5

    iput-wide v5, v9, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->folderId:J

    goto :goto_2

    .line 2223
    :cond_8
    iput-wide v10, v9, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->folderId:J

    goto :goto_2

    .line 2226
    :cond_9
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v0, :cond_a

    .line 2227
    const-string v0, "BluetoothMapContentObserver"

    const-string v5, "We did not delete the message, hence the old folder is unknown. Moving to inbox."

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2233
    :cond_a
    const/4 v12, 0x0

    :goto_2
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v0, :cond_c

    .line 2235
    const-string v0, "unknown"

    .line 2236
    if-eqz v9, :cond_b

    .line 2237
    iget-wide v5, v9, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->folderId:J

    invoke-virtual {v1, v5, v6}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderById(J)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v1

    .line 2238
    if-eqz v1, :cond_b

    .line 2239
    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2242
    :cond_b
    const-string v1, "BluetoothMapContentObserver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setEmailMessageStatusDelete: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " status: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2245
    :cond_c
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2246
    if-nez v12, :cond_d

    .line 2247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set delete status "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " failed."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMapContentObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2249
    :cond_d
    return v12

    .line 2245
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private setMsgListMms(Ljava/util/Map;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;Z)V"
        }
    .end annotation

    .line 366
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListMms:Ljava/util/Map;

    .line 367
    if-eqz p2, :cond_0

    .line 368
    iget-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->updateFolderVersionCounter()V

    .line 370
    :cond_0
    iget-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {p2, p1}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->setMsgListMms(Ljava/util/Map;)V

    .line 371
    return-void
.end method

.method private setMsgListMsg(Ljava/util/Map;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;Z)V"
        }
    .end annotation

    .line 380
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListMsg:Ljava/util/Map;

    .line 381
    if-eqz p2, :cond_0

    .line 382
    iget-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->updateFolderVersionCounter()V

    .line 384
    :cond_0
    iget-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {p2, p1}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->setMsgListMsg(Ljava/util/Map;)V

    .line 385
    return-void
.end method

.method private setMsgListSms(Ljava/util/Map;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;Z)V"
        }
    .end annotation

    .line 352
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListSms:Ljava/util/Map;

    .line 353
    if-eqz p2, :cond_0

    .line 354
    iget-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->updateFolderVersionCounter()V

    .line 356
    :cond_0
    iget-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {p2, p1}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->setMsgListSms(Ljava/util/Map;)V

    .line 357
    return-void
.end method

.method private unDeleteMessageMms(J)Z
    .locals 8

    .line 2295
    nop

    .line 2296
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 2297
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2299
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2300
    const-string v4, "thread_id"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 2301
    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 2305
    const-string v4, "_id"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 2306
    const-string v6, "msg_box"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 2307
    if-ne v6, v3, :cond_0

    .line 2308
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    const/16 v7, 0x89

    invoke-static {v6, v4, v5, v7}, Lcom/android/bluetooth/map/BluetoothMapContent;->getAddressMms(Landroid/content/ContentResolver;JI)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 2311
    :cond_0
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    const/16 v7, 0x97

    invoke-static {v6, v4, v5, v7}, Lcom/android/bluetooth/map/BluetoothMapContent;->getAddressMms(Landroid/content/ContentResolver;JI)Ljava/lang/String;

    move-result-object v4

    .line 2314
    :goto_0
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 2315
    new-array v6, v3, [Ljava/lang/String;

    aput-object v4, v6, v2

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2316
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    invoke-static {v2, v5}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 2317
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListMms()Ljava/util/Map;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2318
    :try_start_1
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListMms()Ljava/util/Map;

    move-result-object v5

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    .line 2319
    if-eqz p1, :cond_1

    .line 2320
    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result p2

    iput p2, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->threadId:I

    .line 2327
    iput v3, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    .line 2329
    :cond_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2330
    :try_start_2
    const-string p1, "thread_id"

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v0, p1, v4, v5}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->updateThreadId(Landroid/net/Uri;Ljava/lang/String;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2331
    goto :goto_1

    .line 2329
    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    .line 2332
    :cond_2
    const-string v0, "BluetoothMapContentObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Message not in deleted folder: handle "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " threadId "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2335
    :goto_1
    move v2, v3

    goto :goto_2

    .line 2338
    :catchall_1
    move-exception p1

    if-eqz v1, :cond_3

    .line 2339
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2341
    :cond_3
    throw p1

    .line 2338
    :cond_4
    :goto_2
    if-eqz v1, :cond_5

    .line 2339
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2342
    :cond_5
    return v2
.end method

.method private unDeleteMessageSms(J)Z
    .locals 7

    .line 2381
    nop

    .line 2382
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 2383
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2385
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2386
    const-string v4, "thread_id"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 2387
    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 2388
    const-string v4, "address"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2389
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 2390
    new-array v6, v3, [Ljava/lang/String;

    aput-object v4, v6, v2

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2391
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    invoke-static {v2, v5}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 2392
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListSms()Ljava/util/Map;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2393
    :try_start_1
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListSms()Ljava/util/Map;

    move-result-object v5

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    .line 2394
    if-eqz p1, :cond_0

    .line 2395
    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result p2

    iput p2, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->threadId:I

    .line 2408
    iput v3, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    .line 2410
    :cond_0
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2411
    :try_start_2
    const-string p1, "thread_id"

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v0, p1, v4, v5}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->updateThreadId(Landroid/net/Uri;Ljava/lang/String;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2412
    goto :goto_0

    .line 2410
    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    .line 2413
    :cond_1
    const-string v0, "BluetoothMapContentObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Message not in deleted folder: handle "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " threadId "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2416
    :goto_0
    move v2, v3

    goto :goto_1

    .line 2419
    :catchall_1
    move-exception p1

    if-eqz v1, :cond_2

    .line 2420
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2422
    :cond_2
    throw p1

    .line 2419
    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 2420
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2423
    :cond_4
    return v2
.end method

.method private unRegisterPhoneServiceStateListener()V
    .locals 3

    .line 3775
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    .line 3776
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 3777
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 3778
    return-void
.end method

.method private updateThreadId(Landroid/net/Uri;Ljava/lang/String;J)V
    .locals 1

    .line 2253
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2254
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2255
    iget-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, v0, p3, p3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2256
    return-void
.end method

.method private writeMmsDataPart(JLcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3234
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3235
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "mid"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3236
    iget-object v1, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentType:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3237
    iget-object v1, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentType:Ljava/lang/String;

    const-string v2, "ct"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3239
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MMS has no CONTENT_TYPE for part "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BluetoothMapContentObserver"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3241
    :goto_0
    iget-object v1, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentId:Ljava/lang/String;

    const-string v2, "cid"

    if-eqz v1, :cond_1

    .line 3242
    iget-object v1, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentId:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3244
    :cond_1
    iget-object v1, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mPartName:Ljava/lang/String;

    const-string v3, ">"

    if-eqz v1, :cond_2

    .line 3245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mPartName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3247
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<part_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3251
    :goto_1
    iget-object v1, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentLocation:Ljava/lang/String;

    const-string v2, "part_"

    const-string v3, "cl"

    const-string v4, ".dat"

    if-eqz v1, :cond_3

    .line 3252
    iget-object v1, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentLocation:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 3254
    :cond_3
    iget-object v1, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mPartName:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 3255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mPartName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 3257
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3260
    :goto_2
    iget-object v1, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentDisposition:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 3261
    iget-object v1, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentDisposition:Ljava/lang/String;

    const-string v3, "cd"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3263
    :cond_5
    iget-object v1, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mPartName:Ljava/lang/String;

    const-string v3, "name"

    const-string v5, "fn"

    if-eqz v1, :cond_6

    .line 3264
    iget-object p4, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mPartName:Ljava/lang/String;

    invoke-virtual {v0, v5, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3265
    iget-object p4, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mPartName:Ljava/lang/String;

    invoke-virtual {v0, v3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 3268
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, v3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3271
    :goto_3
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "/part"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 3272
    iget-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p2, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    .line 3275
    iget-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p2, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p1

    .line 3276
    iget-object p2, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mData:[B

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 3277
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 3278
    return-void
.end method


# virtual methods
.method public deinit()V
    .locals 1

    .line 3868
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mInitialized:Z

    .line 3869
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->unregisterObserver()V

    .line 3870
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsBroadcastReceiver:Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 3871
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->unregister()V

    .line 3873
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->unRegisterPhoneServiceStateListener()V

    .line 3874
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3875
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->failPendingMessages()V

    .line 3876
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->removeDeletedMessages()V

    .line 3879
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mPushMsgList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 3881
    return-void
.end method

.method eventMaskContainsContacts(J)Z
    .locals 0

    .line 967
    invoke-static {p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEventParticipantPresenceChanged(J)Z

    move-result p1

    return p1
.end method

.method eventMaskContainsCovo(J)Z
    .locals 1

    .line 971
    invoke-static {p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEventConversationChanged(J)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEventParticipantChatstateChanged(J)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public getObserverRemoteFeatureMask()I
    .locals 2

    .line 315
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v0, :cond_0

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getObserverRemoteFeatureMask : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mMapSupportedFeatures: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapSupportedFeatures:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMapContentObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_0
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapSupportedFeatures:I

    return v0
.end method

.method public handleMmsSendIntent(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 13

    .line 3898
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    const-string v1, "BluetoothMapContentObserver"

    if-eqz v0, :cond_0

    .line 3899
    const-string v0, "handleMmsSendIntent()"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3901
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->isConnected()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 3903
    sget-boolean p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz p1, :cond_1

    .line 3904
    const-string p1, "MNS not connected - use static handling"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3906
    :cond_1
    return v2

    .line 3908
    :cond_2
    const-wide/16 v3, -0x1

    const-string v0, "HANDLE"

    invoke-virtual {p2, v0, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 3909
    const-string v0, "result"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 3910
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListMms()Ljava/util/Map;

    move-result-object v3

    invoke-static {p1, p2, v0, v3}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->actionMmsSent(Landroid/content/Context;Landroid/content/Intent;ILjava/util/Map;)V

    .line 3911
    const-wide/16 v3, 0x0

    cmp-long p1, v8, v3

    const/4 v3, 0x1

    if-gez p1, :cond_3

    .line 3912
    const-string p1, "Intent received for an invalid handle"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3913
    return v3

    .line 3915
    :cond_3
    const/4 p1, -0x1

    const/4 v1, 0x4

    if-eq v0, p1, :cond_4

    .line 3916
    iget-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mObserverRegistered:Z

    if-eqz p1, :cond_5

    .line 3917
    new-instance p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    .line 3918
    invoke-static {v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMmsFolderName(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    sget-object v12, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    const-string v7, "SendingFailure"

    move-object v5, p1

    move-object v6, p0

    invoke-direct/range {v5 .. v12}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 3919
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    .line 3920
    goto :goto_0

    .line 3922
    :cond_4
    const-string p1, "transparent"

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 3923
    if-eqz p1, :cond_5

    .line 3924
    iget-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mObserverRegistered:Z

    if-eqz p1, :cond_5

    .line 3925
    new-instance p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    .line 3926
    invoke-static {v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMmsFolderName(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    sget-object v12, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    const-string v7, "SendingSuccess"

    move-object v5, p1

    move-object v6, p0

    invoke-direct/range {v5 .. v12}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 3927
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    .line 3931
    :cond_5
    :goto_0
    return v3
.end method

.method public handleSmsSendIntent(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2

    .line 3884
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->NONE:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 3885
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->ordinal()I

    move-result v0

    const-string v1, "type"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 3884
    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->fromOrdinal(I)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v0

    .line 3886
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne v0, v1, :cond_0

    .line 3887
    invoke-virtual {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->handleMmsSendIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    return p1

    .line 3889
    :cond_0
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mInitialized:Z

    if-eqz v0, :cond_1

    .line 3890
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsBroadcastReceiver:Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 3891
    const/4 p1, 0x1

    return p1

    .line 3894
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public init()V
    .locals 1

    .line 3855
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsBroadcastReceiver:Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 3856
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->register()V

    .line 3859
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mCeBroadcastReceiver:Lcom/android/bluetooth/map/BluetoothMapContentObserver$CeBroadcastReceiver;

    if-eqz v0, :cond_1

    .line 3860
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$CeBroadcastReceiver;->register()V

    .line 3863
    :cond_1
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->registerPhoneServiceStateListener()V

    .line 3864
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mInitialized:Z

    .line 3865
    return-void
.end method

.method public pushMessage(Lcom/android/bluetooth/map/BluetoothMapbMessage;Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapAppParams;Ljava/lang/String;J)J
    .locals 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/RemoteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2619
    move-object/from16 v9, p0

    move-object/from16 v0, p1

    move-wide/from16 v10, p5

    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v1, :cond_0

    .line 2620
    const-string v1, "BluetoothMapContentObserver"

    const-string v2, "pushMessage"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2622
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getRecipients()Ljava/util/ArrayList;

    move-result-object v1

    .line 2623
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getTransparent()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    const/4 v13, 0x0

    goto :goto_0

    .line 2624
    :cond_1
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getTransparent()I

    move-result v2

    move v13, v2

    .line 2625
    :goto_0
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getRetry()I

    move-result v14

    .line 2626
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    .line 2627
    nop

    .line 2628
    nop

    .line 2630
    const-wide/16 v15, -0x1

    if-nez p2, :cond_2

    .line 2631
    const-string v0, "BluetoothMapContentObserver"

    const-string v1, "Folder element is null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2632
    return-wide v15

    .line 2635
    :cond_2
    if-nez v1, :cond_4

    .line 2636
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "draft"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2637
    new-instance v1, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v3, ""

    const-string v4, ""

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)V

    .line 2639
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2640
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2641
    const-string v1, "BluetoothMapContentObserver"

    const-string v3, "Added empty recipient to draft message"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2642
    move-object v1, v2

    goto :goto_1

    .line 2643
    :cond_3
    const-string v0, "BluetoothMapContentObserver"

    const-string v1, "Trying to send a message with no recipients"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2644
    return-wide v15

    .line 2648
    :cond_4
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v2

    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v17, 0x0

    const/4 v8, 0x1

    if-eqz v2, :cond_11

    .line 2650
    check-cast v0, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->getEmailBody()Ljava/lang/String;

    move-result-object v0

    .line 2651
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v2, :cond_5

    .line 2652
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 2653
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pushMessage: message string length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BluetoothMapContentObserver"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2654
    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2655
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pushMessage: messages count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BluetoothMapContentObserver"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2656
    const/4 v3, 0x0

    :goto_2
    array-length v4, v2

    if-ge v3, v4, :cond_5

    .line 2657
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "part "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v2, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BluetoothMapContentObserver"

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2656
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2660
    :cond_5
    nop

    .line 2661
    nop

    .line 2662
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, p4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Message"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 2663
    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v3, :cond_6

    .line 2664
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pushMessage - uriInsert= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", intoFolder id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2665
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2664
    const-string v4, "BluetoothMapContentObserver"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2668
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListMsg()Ljava/util/Map;

    move-result-object v18

    monitor-enter v18

    .line 2670
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2671
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderId()J

    move-result-wide v10

    .line 2674
    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/String;

    .line 2675
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 2677
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v14

    sub-int/2addr v14, v8

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;

    invoke-virtual {v14}, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->getFirstEmail()Ljava/lang/String;

    move-result-object v14

    .line 2679
    const-string v15, "\r\n"

    invoke-virtual {v0, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 2680
    const/4 v12, 0x0

    :goto_3
    array-length v8, v15

    if-ge v12, v8, :cond_8

    .line 2681
    aget-object v8, v15, v12

    const-string v4, "Subject:"

    invoke-virtual {v8, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2682
    aget-object v4, v15, v12

    const-string v5, "Subject:"

    const/4 v8, 0x2

    invoke-virtual {v4, v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 2683
    goto :goto_4

    .line 2680
    :cond_7
    const/4 v8, 0x2

    add-int/lit8 v12, v12, 0x1

    move v4, v8

    const/4 v8, 0x1

    goto :goto_3

    .line 2687
    :cond_8
    :goto_4
    const-string v4, "folder_id"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v3, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2688
    const-string v4, "subject"

    const/4 v8, 0x1

    aget-object v12, v5, v8

    invoke-virtual {v3, v4, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2689
    const-string v4, "date"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v3, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2690
    const-string v4, "to_list"

    invoke-virtual {v3, v4, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2693
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v4, :cond_a

    .line 2694
    const-string v4, "BluetoothMapContentObserver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[pushMessage] folderId = "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2695
    const-string v4, "BluetoothMapContentObserver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[pushMessage] timestamp = "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2696
    const-string v4, "BluetoothMapContentObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[pushMessage] address = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2697
    const-string v4, "BluetoothMapContentObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[pushMessage] subject = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2698
    const-string v4, "BluetoothMapContentObserver"

    const-string v5, "[pushMessage] list all vCard information:"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2699
    const/4 v4, 0x0

    :goto_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_a

    .line 2701
    const-string v5, "BluetoothMapContentObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "i="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", envelope="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;

    invoke-virtual {v7}, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->getEnvLevel()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", name="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2702
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;

    invoke-virtual {v7}, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2701
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2703
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;

    invoke-virtual {v5}, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->getEmail()[Ljava/lang/String;

    move-result-object v5

    .line 2704
    const/4 v6, 0x0

    :goto_6
    array-length v7, v5

    if-ge v6, v7, :cond_9

    .line 2705
    const-string v7, "BluetoothMapContentObserver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "j="

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", vCardEmailAddress="

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v12, v5, v6

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2704
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 2699
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 2710
    :cond_a
    iget-object v1, v9, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mProviderClient:Landroid/content/ContentProviderClient;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 2711
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v2, :cond_b

    .line 2712
    const-string v2, "BluetoothMapContentObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pushMessage - uriNew= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2714
    :cond_b
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 2717
    :try_start_1
    iget-object v2, v9, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mProviderClient:Landroid/content/ContentProviderClient;

    const-string v3, "w"

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentProviderClient;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2718
    :try_start_2
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2720
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2729
    nop

    .line 2730
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 2734
    goto :goto_7

    .line 2732
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 2733
    :try_start_5
    const-string v0, "BluetoothMapContentObserver"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 2736
    :goto_7
    if-eqz v1, :cond_c

    .line 2737
    :try_start_6
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_8

    .line 2739
    :catch_1
    move-exception v0

    move-object v1, v0

    .line 2740
    :try_start_7
    const-string v0, "BluetoothMapContentObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2742
    goto :goto_9

    .line 2741
    :cond_c
    :goto_8
    nop

    .line 2747
    :goto_9
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    const/4 v7, 0x1

    move-object v1, v0

    move-object/from16 v2, p0

    move-wide v3, v14

    move-wide v5, v10

    invoke-direct/range {v1 .. v7}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;JJI)V

    .line 2748
    const/4 v1, 0x1

    if-ne v13, v1, :cond_d

    const/4 v12, 0x1

    goto :goto_a

    :cond_d
    const/4 v12, 0x0

    :goto_a
    iput-boolean v12, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->transparent:Z

    .line 2750
    iget-object v1, v9, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mFolders:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    const-string v2, "outbox"

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderByName(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v1

    .line 2752
    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderId()J

    move-result-wide v1

    cmp-long v1, v10, v1

    if-nez v1, :cond_e

    .line 2753
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->localInitiatedSend:Z

    .line 2755
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListMsg()Ljava/util/Map;

    move-result-object v1

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2756
    monitor-exit v18
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 2757
    goto/16 :goto_1d

    .line 2728
    :catchall_0
    move-exception v0

    move-object/from16 v17, v2

    goto :goto_d

    .line 2724
    :catch_2
    move-exception v0

    move-object/from16 v17, v2

    goto :goto_b

    .line 2721
    :catch_3
    move-exception v0

    move-object/from16 v17, v2

    goto :goto_c

    .line 2724
    :catch_4
    move-exception v0

    goto :goto_b

    .line 2721
    :catch_5
    move-exception v0

    goto :goto_c

    .line 2728
    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object/from16 v1, v17

    goto :goto_e

    .line 2724
    :catch_6
    move-exception v0

    move-object/from16 v1, v17

    .line 2725
    :goto_b
    :try_start_8
    const-string v2, "BluetoothMapContentObserver"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2726
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unable to parse message."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2721
    :catch_7
    move-exception v0

    move-object/from16 v1, v17

    .line 2722
    :goto_c
    const-string v2, "BluetoothMapContentObserver"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2723
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Unable to open file stream"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 2728
    :catchall_2
    move-exception v0

    :goto_d
    move-object v2, v0

    .line 2729
    :goto_e
    if-eqz v17, :cond_f

    .line 2730
    :try_start_9
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_f

    .line 2732
    :catch_8
    move-exception v0

    move-object v3, v0

    .line 2733
    :try_start_a
    const-string v0, "BluetoothMapContentObserver"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_10

    .line 2734
    :cond_f
    :goto_f
    nop

    .line 2736
    :goto_10
    if-eqz v1, :cond_10

    .line 2737
    :try_start_b
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_11

    .line 2739
    :catch_9
    move-exception v0

    move-object v1, v0

    .line 2740
    :try_start_c
    const-string v0, "BluetoothMapContentObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12

    .line 2741
    :cond_10
    :goto_11
    nop

    .line 2742
    :goto_12
    throw v2

    .line 2756
    :catchall_3
    move-exception v0

    monitor-exit v18
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    throw v0

    .line 2757
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v2

    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_14

    .line 2759
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2760
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2761
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;

    .line 2763
    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->getEnvLevel()I

    move-result v5

    if-nez v5, :cond_12

    .line 2765
    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->getFirstPhoneNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2767
    :cond_12
    goto :goto_13

    .line 2769
    :cond_13
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, [Ljava/lang/String;

    move-object v4, v0

    check-cast v4, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;

    move-object/from16 v1, p0

    move v5, v13

    move v6, v14

    move-wide/from16 v7, p5

    invoke-virtual/range {v1 .. v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendMmsMessage(Ljava/lang/String;[Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapbMessageMime;IIJ)J

    move-result-wide v14

    .line 2771
    goto/16 :goto_1d

    .line 2772
    :cond_14
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-wide v1, v15

    :goto_14
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;

    .line 2774
    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->getEnvLevel()I

    move-result v4

    if-nez v4, :cond_2c

    .line 2776
    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->getFirstPhoneNumber()Ljava/lang/String;

    move-result-object v1

    .line 2779
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 2780
    iget-object v1, v9, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->queryNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2781
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 2782
    iget-object v1, v9, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->getFormatName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->queryNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    goto :goto_15

    .line 2781
    :cond_15
    move-object v8, v1

    goto :goto_15

    .line 2779
    :cond_16
    move-object v8, v1

    .line 2785
    :goto_15
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 2789
    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->getFirstEmail()Ljava/lang/String;

    .line 2790
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v7

    .line 2791
    nop

    .line 2796
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v1

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    move-object v1, v0

    check-cast v1, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;

    .line 2797
    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->getTextOnly()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 2798
    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->getMessageAsText()Ljava/lang/String;

    move-result-object v1

    .line 2799
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v2

    .line 2800
    invoke-virtual {v2, v1}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2801
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2802
    const/16 v3, 0xa

    if-gt v2, v3, :cond_18

    .line 2803
    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v3, :cond_17

    .line 2804
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pushMessage - converting MMS to SMS, sms parts="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BluetoothMapContentObserver"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2807
    :cond_17
    iget-object v2, v9, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->setType(Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    goto :goto_16

    .line 2809
    :cond_18
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v1, :cond_19

    .line 2810
    const-string v1, "BluetoothMapContentObserver"

    const-string v2, "pushMessage - MMS text only but to big to convert to SMS"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2813
    :cond_19
    move-object/from16 v1, v17

    goto :goto_16

    .line 2818
    :cond_1a
    move-object/from16 v1, v17

    :goto_16
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v2

    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 2821
    const/4 v6, 0x1

    new-array v3, v6, [Ljava/lang/String;

    const/16 v18, 0x0

    aput-object v8, v3, v18

    move-object v4, v0

    check-cast v4, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;

    move-object/from16 v1, p0

    move-object v2, v7

    move v5, v13

    move v7, v6

    move v6, v14

    move/from16 v19, v7

    move-wide/from16 v7, p5

    invoke-virtual/range {v1 .. v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendMmsMessage(Ljava/lang/String;[Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapbMessageMime;IIJ)J

    move-result-wide v1

    move-wide v3, v10

    move-object/from16 p4, v12

    move-wide v5, v15

    goto/16 :goto_1c

    .line 2824
    :cond_1b
    const/16 v18, 0x0

    const/16 v19, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v2

    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v2

    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 2825
    invoke-virtual {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    goto :goto_17

    .line 2906
    :cond_1c
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v0, :cond_1d

    .line 2907
    const-string v0, "BluetoothMapContentObserver"

    const-string v1, "pushMessage - failure on type "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2909
    :cond_1d
    return-wide v15

    .line 2827
    :cond_1e
    :goto_17
    if-nez v1, :cond_1f

    .line 2828
    move-object v1, v0

    check-cast v1, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->getSmsBody()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    goto :goto_18

    .line 2827
    :cond_1f
    move-object v6, v1

    .line 2831
    :goto_18
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 2838
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2840
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListSms()Ljava/util/Map;

    move-result-object v27

    monitor-enter v27

    .line 2844
    :try_start_d
    iget-object v2, v9, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v24, ""

    .line 2845
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    long-to-int v3, v10

    .line 2844
    move-object/from16 v20, v2

    move-object/from16 v21, v1

    move-object/from16 v22, v8

    move-object/from16 v23, v6

    move/from16 v26, v3

    invoke-static/range {v20 .. v26}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;I)Landroid/net/Uri;

    move-result-object v5

    .line 2848
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v2, :cond_20

    .line 2849
    const-string v2, "BluetoothMapContentObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sms.addMessageToUri() returned: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2851
    :cond_20
    if-nez v5, :cond_22

    .line 2852
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v0, :cond_21

    .line 2853
    const-string v0, "BluetoothMapContentObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pushMessage - failure on add to uri "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2855
    :cond_21
    monitor-exit v27

    return-wide v15

    .line 2857
    :cond_22
    iget-object v1, v9, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    sget-object v30, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->SMS_PROJECTION_SHORT:[Ljava/lang/String;

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v28, v1

    move-object/from16 v29, v5

    invoke-virtual/range {v28 .. v33}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 2862
    if-eqz v3, :cond_27

    :try_start_e
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 2863
    const-string v1, "_id"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 2864
    const-string v4, "type"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 2865
    const-string v15, "thread_id"

    invoke-interface {v3, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v3, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 2866
    const-string v0, "read"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 2867
    sget-boolean v16, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    if-eqz v16, :cond_23

    .line 2868
    move-object/from16 p3, v3

    :try_start_f
    const-string v3, "BluetoothMapContentObserver"

    move-object/from16 p4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v6

    const-string v6, "add message with id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " threadId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " readFlag="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "to mMsgListSms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 2867
    :cond_23
    move-object/from16 p3, v3

    move-object/from16 p4, v5

    move-object/from16 v16, v6

    .line 2872
    :goto_19
    new-instance v6, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    move-wide/from16 v22, v1

    move-object v1, v6

    move-object/from16 v2, p0

    move-object/from16 v24, p3

    move v5, v4

    move-wide/from16 v3, v22

    move-object/from16 p3, p4

    move-object v10, v6

    move-object/from16 p4, v12

    move-object/from16 v12, v16

    move v6, v15

    move-object v11, v7

    move v7, v0

    :try_start_10
    invoke-direct/range {v1 .. v7}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;JIII)V

    .line 2873
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListSms()Ljava/util/Map;

    move-result-object v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2874
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 2875
    nop

    .line 2882
    if-eqz v24, :cond_24

    .line 2883
    :try_start_11
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 2887
    :cond_24
    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    .line 2890
    const-string v0, "outbox"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2891
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;

    move-object v1, v0

    move-object/from16 v2, p0

    move-wide v3, v15

    move v5, v13

    move v6, v14

    move-object v7, v8

    move-object/from16 v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;JIILjava/lang/String;Landroid/net/Uri;)V

    .line 2893
    iget-object v1, v9, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mPushMsgList:Ljava/util/Map;

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2895
    move-wide/from16 v3, p5

    invoke-virtual {v9, v0, v12, v3, v4}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendMessage(Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;Ljava/lang/String;J)V

    .line 2897
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v0, :cond_26

    .line 2898
    const-string v0, "BluetoothMapContentObserver"

    const-string v1, "sendMessage returned..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 2890
    :cond_25
    move-wide/from16 v3, p5

    .line 2904
    :cond_26
    :goto_1a
    monitor-exit v27
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 2905
    move-wide v1, v15

    const-wide/16 v5, -0x1

    goto :goto_1c

    .line 2882
    :catchall_4
    move-exception v0

    move-object/from16 v24, p3

    goto :goto_1b

    :catchall_5
    move-exception v0

    move-object/from16 v24, v3

    goto :goto_1b

    .line 2862
    :cond_27
    move-object/from16 v24, v3

    move-object/from16 p3, v5

    .line 2876
    :try_start_12
    const-string v0, "BluetoothMapContentObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " no longer exist!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 2879
    nop

    .line 2882
    if-eqz v24, :cond_28

    .line 2883
    :try_start_13
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    :cond_28
    monitor-exit v27

    .line 2879
    const-wide/16 v5, -0x1

    return-wide v5

    .line 2882
    :catchall_6
    move-exception v0

    :goto_1b
    if-eqz v24, :cond_29

    .line 2883
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 2885
    :cond_29
    throw v0

    .line 2904
    :catchall_7
    move-exception v0

    monitor-exit v27
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    throw v0

    .line 2832
    :cond_2a
    const-string v0, "BluetoothMapContentObserver"

    const-string v1, "PushMsg: Empty msgBody "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2834
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "push EMPTY message: Invalid Body"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2786
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No Phone number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2774
    :cond_2c
    move-wide v3, v10

    move-object/from16 p4, v12

    move-wide v5, v15

    const/16 v18, 0x0

    const/16 v19, 0x1

    .line 2912
    :goto_1c
    move-object/from16 v0, p1

    move-object/from16 v12, p4

    move-wide v10, v3

    move-wide v15, v5

    goto/16 :goto_14

    .line 2772
    :cond_2d
    move-wide v14, v1

    .line 2916
    :goto_1d
    return-wide v14
.end method

.method refreshConvoListVersionCounter()V
    .locals 2

    .line 1116
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mObserverRegistered:Z

    if-eqz v0, :cond_0

    .line 1118
    return-void

    .line 1125
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mTransmitEvents:Z

    .line 1127
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContactUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 1128
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContactUri:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->handleContactListChanges(Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1132
    :cond_1
    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mTransmitEvents:Z

    .line 1133
    nop

    .line 1134
    return-void

    .line 1132
    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mTransmitEvents:Z

    .line 1133
    throw v1
.end method

.method refreshFolderVersionCounter()V
    .locals 4

    .line 1086
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mObserverRegistered:Z

    if-eqz v0, :cond_0

    .line 1088
    return-void

    .line 1095
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mTransmitEvents:Z

    .line 1097
    const/4 v0, 0x1

    :try_start_0
    iget-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mEnableSmsMms:Z

    if-eqz v1, :cond_1

    .line 1098
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->handleMsgListChangesSms()V

    .line 1099
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->handleMsgListChangesMms()V

    .line 1101
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 1103
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMessageUri:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->handleMsgListChangesMsg(Landroid/net/Uri;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1107
    goto :goto_0

    .line 1104
    :catch_0
    move-exception v1

    .line 1105
    :try_start_2
    const-string v2, "BluetoothMapContentObserver"

    const-string v3, "Unable to update FolderVersionCounter. - Not fatal, but can cause undesirable user experience!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1111
    :cond_2
    :goto_0
    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mTransmitEvents:Z

    .line 1112
    nop

    .line 1113
    return-void

    .line 1111
    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mTransmitEvents:Z

    .line 1112
    throw v1
.end method

.method public registerObserver()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 996
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    const-string v1, "BluetoothMapContentObserver"

    if-eqz v0, :cond_0

    .line 997
    const-string v0, "registerObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    :cond_0
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mObserverRegistered:Z

    if-eqz v0, :cond_1

    .line 1001
    return-void

    .line 1004
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    if-eqz v0, :cond_3

    .line 1006
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAuthority:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mProviderClient:Landroid/content/ContentProviderClient;

    .line 1007
    if-eqz v0, :cond_2

    .line 1010
    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderClient;->setDetectNotResponding(J)V

    .line 1014
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v0

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->IM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne v0, v2, :cond_3

    .line 1016
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->initContactsList()V

    goto :goto_0

    .line 1008
    :cond_2
    new-instance v0, Landroid/os/RemoteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to acquire provider for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAuthority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1021
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->initMsgList()V

    .line 1024
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mEnableSmsMms:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 1026
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1027
    iput-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mObserverRegistered:Z

    .line 1030
    :cond_4
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    if-eqz v0, :cond_a

    .line 1032
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    iget-object v3, v3, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mBase_uri_no_account:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Message"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1034
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    const-string v6, "Registering observer for: "

    if-eqz v5, :cond_5

    .line 1035
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    :cond_5
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v0, v2, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1041
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    iget-object v5, v5, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mBase_uri:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1042
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v4, :cond_6

    .line 1043
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    :cond_6
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v0, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1047
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v0

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->IM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne v0, v4, :cond_9

    .line 1049
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    iget-object v4, v4, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mBase_uri_no_account:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "ConvoContact"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1051
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v5, :cond_7

    .line 1052
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    :cond_7
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v0, v2, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1058
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    iget-object v5, v5, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mBase_uri:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1059
    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v3, :cond_8

    .line 1060
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    :cond_8
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1065
    :cond_9
    iput-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mObserverRegistered:Z

    .line 1067
    :cond_a
    return-void
.end method

.method public sendMessage(Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;Ljava/lang/String;J)V
    .locals 16

    .line 3283
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapSimManager;->getSubInfoNumber()I

    move-result v2

    const-string v3, "BluetoothMapContentObserver"

    if-gtz v2, :cond_0

    .line 3284
    const-string v0, "sendMessage empty subid"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3285
    return-void

    .line 3287
    :cond_0
    move-wide/from16 v4, p3

    long-to-int v2, v4

    invoke-static {v2}, Landroid/telephony/SmsManager;->getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;

    move-result-object v4

    .line 3290
    move-object/from16 v2, p2

    invoke-virtual {v4, v2}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 3291
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->parts:I

    .line 3293
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    iput-wide v5, v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->timestamp:J

    .line 3294
    const/4 v2, 0x0

    iput v2, v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->partsDelivered:I

    .line 3295
    iput v2, v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->partsSent:I

    .line 3297
    new-instance v9, Ljava/util/ArrayList;

    iget v5, v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->parts:I

    invoke-direct {v9, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 3298
    new-instance v8, Ljava/util/ArrayList;

    iget v5, v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->parts:I

    invoke-direct {v8, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 3307
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 3308
    move v5, v2

    :goto_0
    iget v6, v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->parts:I

    if-ge v5, v6, :cond_1

    .line 3311
    new-instance v6, Landroid/content/Intent;

    const-string v10, "com.android.bluetooth.BluetoothMapContentObserver.action.MESSAGE_DELIVERY"

    const/4 v11, 0x0

    invoke-direct {v6, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3316
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "message/"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v13, v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->id:J

    .line 3317
    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v13, v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->timestamp:J

    invoke-virtual {v10, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3316
    invoke-virtual {v6, v10}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3318
    iget-wide v13, v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->id:J

    const-string v10, "HANDLE"

    invoke-virtual {v6, v10, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3319
    iget-wide v13, v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->timestamp:J

    const-string v15, "timestamp"

    invoke-virtual {v6, v15, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3320
    iget-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    .line 3321
    const/high16 v14, 0x8000000

    invoke-static {v13, v2, v6, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 3324
    new-instance v13, Landroid/content/Intent;

    const-string v15, "com.android.bluetooth.BluetoothMapContentObserver.action.MESSAGE_SENT"

    invoke-direct {v13, v15, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3329
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v12, v3

    iget-wide v2, v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->timestamp:J

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3330
    iget-wide v2, v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->id:J

    invoke-virtual {v13, v10, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3331
    iget-object v2, v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "uri"

    invoke-virtual {v13, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3332
    iget v2, v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->retry:I

    const-string v3, "retry"

    invoke-virtual {v13, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3333
    iget v2, v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->transparent:I

    const-string v3, "transparent"

    invoke-virtual {v13, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3335
    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    .line 3336
    const/4 v3, 0x0

    invoke-static {v2, v3, v13, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 3340
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3341
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3308
    add-int/lit8 v5, v5, 0x1

    move-object v3, v12

    const/4 v2, 0x0

    goto/16 :goto_0

    .line 3344
    :cond_1
    move-object v12, v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMessage to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->phone:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v12

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3346
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 3347
    iget-object v5, v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->phone:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    .line 3348
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/app/PendingIntent;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/app/PendingIntent;

    .line 3347
    invoke-virtual/range {v4 .. v9}, Landroid/telephony/SmsManager;->sendTextMessageWithoutPersisting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_1

    .line 3350
    :cond_2
    iget-object v5, v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->phone:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/telephony/SmsManager;->sendMultipartTextMessageWithoutPersisting(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 3354
    :cond_3
    :goto_1
    return-void
.end method

.method public sendMmsMessage(Ljava/lang/String;[Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapbMessageMime;IIJ)J
    .locals 8

    .line 2935
    if-eqz p1, :cond_2

    const-string v0, "outbox"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2936
    const-string v1, "draft"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2938
    :cond_0
    const/4 v3, 0x3

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->pushMmsToFolder(I[Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapbMessageMime;J)J

    move-result-wide p2

    .line 2942
    const-wide/16 v1, -0x1

    cmp-long v1, v1, p2

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2944
    sget-object p1, Lcom/android/bluetooth/map/MmsFileProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    .line 2945
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 2946
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 2947
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.android.bluetooth.BluetoothMapContentObserver.action.MESSAGE_SENT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2949
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "message/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2950
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->ordinal()I

    move-result v0

    const-string v1, "type"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2951
    const-string v0, "HANDLE"

    invoke-virtual {p1, v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2952
    const-string v0, "transparent"

    invoke-virtual {p1, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2953
    const-string p4, "retry"

    invoke-virtual {p1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2955
    iget-object p4, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    .line 2956
    const/4 p5, 0x0

    invoke-static {p4, p5, p1, p5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 2958
    long-to-int p1, p6

    invoke-static {p1}, Landroid/telephony/SmsManager;->getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2959
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendMultimediaMessage(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V

    .line 2965
    :cond_1
    return-wide p2

    .line 2968
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot push message to other folders than outbox/draft"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFolderStructure(Lcom/android/bluetooth/map/BluetoothMapFolderElement;)V
    .locals 0

    .line 545
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mFolders:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 546
    return-void
.end method

.method public setMessageStatusDeleted(JLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Lcom/android/bluetooth/map/BluetoothMapFolderElement;Ljava/lang/String;I)Z
    .locals 6

    .line 2437
    nop

    .line 2438
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    const-string v1, "BluetoothMapContentObserver"

    if-eqz v0, :cond_0

    .line 2439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMessageStatusDeleted: handle "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " value "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2443
    :cond_0
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne p3, v0, :cond_1

    .line 2444
    move-object v0, p0

    move-object v1, p4

    move-object v2, p5

    move-wide v3, p1

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setEmailMessageStatusDelete(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Ljava/lang/String;JI)Z

    move-result p1

    goto :goto_3

    .line 2445
    :cond_1
    sget-object p4, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->IM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne p3, p4, :cond_2

    .line 2447
    sget-boolean p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz p1, :cond_8

    .line 2448
    const-string p1, "setMessageStatusDeleted: IM not handled"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2451
    :cond_2
    const/4 p4, 0x1

    if-ne p6, p4, :cond_5

    .line 2452
    sget-object p4, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-eq p3, p4, :cond_4

    sget-object p4, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne p3, p4, :cond_3

    goto :goto_0

    .line 2454
    :cond_3
    sget-object p4, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne p3, p4, :cond_8

    .line 2455
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->deleteMessageMms(J)Z

    move-result p1

    goto :goto_3

    .line 2453
    :cond_4
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->deleteMessageSms(J)Z

    move-result p1

    goto :goto_3

    .line 2457
    :cond_5
    if-nez p6, :cond_8

    .line 2458
    sget-object p4, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-eq p3, p4, :cond_7

    sget-object p4, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne p3, p4, :cond_6

    goto :goto_1

    .line 2460
    :cond_6
    sget-object p4, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne p3, p4, :cond_8

    .line 2461
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->unDeleteMessageMms(J)Z

    move-result p1

    goto :goto_3

    .line 2459
    :cond_7
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->unDeleteMessageSms(J)Z

    move-result p1

    goto :goto_3

    .line 2465
    :cond_8
    :goto_2
    const/4 p1, 0x0

    :goto_3
    return p1
.end method

.method public setMessageStatusRead(JLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Ljava/lang/String;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2478
    nop

    .line 2480
    sget-boolean p4, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz p4, :cond_0

    .line 2481
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setMessageStatusRead: handle "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " type "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " value "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "BluetoothMapContentObserver"

    invoke-static {v0, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2487
    :cond_0
    sget-object p4, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eq p3, p4, :cond_9

    sget-object p4, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne p3, p4, :cond_1

    goto/16 :goto_1

    .line 2507
    :cond_1
    sget-object p4, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne p3, p4, :cond_5

    .line 2508
    sget-object p3, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p3

    .line 2509
    sget-boolean p4, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz p4, :cond_2

    .line 2510
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " -> MMS Uri: "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v2, "BluetoothMapContentObserver"

    invoke-static {v2, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2512
    :cond_2
    new-instance p4, Landroid/content/ContentValues;

    invoke-direct {p4}, Landroid/content/ContentValues;-><init>()V

    .line 2513
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "read"

    invoke-virtual {p4, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2514
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListMms()Ljava/util/Map;

    move-result-object v2

    monitor-enter v2

    .line 2515
    :try_start_0
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListMms()Ljava/util/Map;

    move-result-object v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    .line 2516
    if-eqz p1, :cond_3

    .line 2517
    iput p5, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->flagRead:I

    .line 2519
    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2520
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1, p3, p4, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 2521
    sget-boolean p2, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz p2, :cond_4

    .line 2522
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " -> "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " rows updated!"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "BluetoothMapContentObserver"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2524
    :cond_4
    goto/16 :goto_2

    .line 2519
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 2524
    :cond_5
    sget-object p4, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-eq p3, p4, :cond_7

    sget-object p4, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->IM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne p3, p4, :cond_6

    goto :goto_0

    :cond_6
    move p1, v0

    goto/16 :goto_2

    .line 2525
    :cond_7
    :goto_0
    iget-object p3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMessageUri:Landroid/net/Uri;

    .line 2526
    new-instance p4, Landroid/content/ContentValues;

    invoke-direct {p4}, Landroid/content/ContentValues;-><init>()V

    .line 2527
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "flag_read"

    invoke-virtual {p4, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2528
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {p4, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2529
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListMsg()Ljava/util/Map;

    move-result-object v2

    monitor-enter v2

    .line 2530
    :try_start_2
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListMsg()Ljava/util/Map;

    move-result-object v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    .line 2531
    if-eqz p1, :cond_8

    .line 2532
    iput p5, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->flagRead:I

    .line 2534
    :cond_8
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2535
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mProviderClient:Landroid/content/ContentProviderClient;

    invoke-virtual {p1, p3, p4, v1, v1}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    goto/16 :goto_2

    .line 2534
    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    .line 2488
    :cond_9
    :goto_1
    sget-object p3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p3

    .line 2489
    new-instance p4, Landroid/content/ContentValues;

    invoke-direct {p4}, Landroid/content/ContentValues;-><init>()V

    .line 2490
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "read"

    invoke-virtual {p4, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2491
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "seen"

    invoke-virtual {p4, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2492
    invoke-virtual {p4}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2493
    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v3, :cond_a

    .line 2494
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " -> SMS Uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " values "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BluetoothMapContentObserver"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2496
    :cond_a
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListSms()Ljava/util/Map;

    move-result-object v2

    monitor-enter v2

    .line 2497
    :try_start_4
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListSms()Ljava/util/Map;

    move-result-object v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    .line 2498
    if-eqz p1, :cond_b

    .line 2499
    iput p5, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->flagRead:I

    .line 2501
    :cond_b
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2502
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1, p3, p4, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 2503
    sget-boolean p2, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz p2, :cond_c

    .line 2504
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " -> "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " rows updated!"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "BluetoothMapContentObserver"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2507
    :cond_c
    nop

    .line 2538
    :goto_2
    if-lez p1, :cond_d

    const/4 v0, 0x1

    :cond_d
    return v0

    .line 2501
    :catchall_2
    move-exception p1

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1
.end method

.method declared-synchronized setNotificationFilter(J)V
    .locals 3

    monitor-enter p0

    .line 979
    :try_start_0
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mEventFilter:J

    .line 980
    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mEventFilter:J

    .line 982
    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->eventMaskContainsContacts(J)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->eventMaskContainsContacts(J)Z

    .line 988
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->eventMaskContainsCovo(J)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->eventMaskContainsCovo(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 993
    :cond_1
    monitor-exit p0

    return-void

    .line 978
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setNotificationRegistration(I)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 915
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    const-string v1, "BluetoothMapContentObserver"

    if-eqz v0, :cond_0

    .line 916
    const-string v0, "setNotificationRegistration() enter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    const/16 v2, 0xd3

    if-nez v0, :cond_1

    .line 919
    return v2

    .line 921
    :cond_1
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->getMessageHandler()Landroid/os/Handler;

    move-result-object v0

    .line 922
    if-eqz v0, :cond_6

    .line 923
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 924
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->isValidMnsRecord()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 925
    iput v5, v3, Landroid/os/Message;->what:I

    goto :goto_0

    .line 928
    :cond_2
    const/4 v4, 0x3

    iput v4, v3, Landroid/os/Message;->what:I

    .line 929
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    iget-object v4, v4, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mMnsLstRegRqst:Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsSdpSearchInfo;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    iget-object v4, v4, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mMnsLstRegRqst:Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsSdpSearchInfo;

    .line 930
    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsSdpSearchInfo;->isSearchInProgress()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 937
    if-ne p1, v5, :cond_3

    .line 938
    return v2

    .line 944
    :cond_3
    iput v5, v3, Landroid/os/Message;->what:I

    .line 948
    :cond_4
    :goto_0
    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasId:I

    iput v2, v3, Landroid/os/Message;->arg1:I

    .line 949
    iput p1, v3, Landroid/os/Message;->arg2:I

    .line 950
    const-wide/16 v4, 0xa

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 953
    sget-boolean p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz p1, :cond_5

    .line 954
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setNotificationRegistration() send : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v3, Landroid/os/Message;->what:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " to MNS "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    :cond_5
    const/16 p1, 0xa0

    return p1

    .line 959
    :cond_6
    sget-boolean p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz p1, :cond_7

    .line 960
    const-string p1, "setNotificationRegistration() Unable to send registration request"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    :cond_7
    return v2
.end method

.method public setObserverRemoteFeatureMask(I)V
    .locals 2

    .line 323
    nop

    .line 324
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->getFeatureMask()I

    move-result v0

    and-int/2addr p1, v0

    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapSupportedFeatures:I

    .line 325
    and-int/lit8 p1, p1, 0x40

    if-eqz p1, :cond_0

    .line 327
    const/16 p1, 0xb

    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    .line 330
    :cond_0
    iget p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapSupportedFeatures:I

    and-int/lit16 v0, p1, 0x80

    const-string v1, "BluetoothMapContentObserver"

    if-eqz v0, :cond_1

    .line 331
    const/16 p1, 0xc

    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    goto :goto_0

    .line 332
    :cond_1
    const v0, 0xc000

    and-int/2addr p1, v0

    if-eqz p1, :cond_2

    .line 336
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setObserverRemoteFeatureMask: Extended Event Reports 1.2 is not set eventhough PARTICIPANT_PRESENCE_CHANGE_BIT or PARTICIPANT_CHAT_STATE_CHANGE_BIT were set, mMapSupportedFeatures="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapSupportedFeatures:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_2
    :goto_0
    sget-boolean p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz p1, :cond_3

    .line 341
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setObserverRemoteFeatureMask: mMapEventReportVersion="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mMapSupportedFeatures="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapSupportedFeatures:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_3
    return-void
.end method

.method public unregisterObserver()V
    .locals 2

    .line 1070
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v0, :cond_0

    .line 1071
    const-string v0, "BluetoothMapContentObserver"

    const-string v1, "unregisterObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1074
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mObserverRegistered:Z

    .line 1075
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mProviderClient:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_1

    .line 1076
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    .line 1077
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mProviderClient:Landroid/content/ContentProviderClient;

    .line 1079
    :cond_1
    return-void
.end method
