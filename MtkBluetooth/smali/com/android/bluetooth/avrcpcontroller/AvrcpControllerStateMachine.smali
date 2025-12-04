.class Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;
.super Lcom/android/bluetooth/statemachine/StateMachine;
.source "AvrcpControllerStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Disconnecting;,
        Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;,
        Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;,
        Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connecting;,
        Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Disconnected;
    }
.end annotation


# static fields
.field private static final ABS_VOL_BASE:I = 0x7f

.field static final ABS_VOL_TIMEOUT_MILLIS:I = 0x3e8

.field protected static final CLEANUP:I = 0x64

.field static final CMD_TIMEOUT_MILLIS:I = 0x2710

.field public static final CONNECT:I = 0x1

.field private static final CONNECT_TIMEOUT:I = 0x65

.field static final DBG:Z

.field public static final DISCONNECT:I = 0x2

.field static final ITEM_PAGE_SIZE:I = 0x14

.field static final MESSAGE_GET_FOLDER_ITEMS:I = 0x12c

.field static final MESSAGE_INTERNAL_ABS_VOL_TIMEOUT:I = 0x66

.field static final MESSAGE_INTERNAL_CMD_TIMEOUT:I = 0xc9

.field static final MESSAGE_PLAY_ITEM:I = 0x12d

.field static final MESSAGE_PROCESS_ADDRESSED_PLAYER_CHANGED:I = 0xd7

.field static final MESSAGE_PROCESS_AVAILABLE_PLAYER_CHANGED:I = 0xdb

.field static final MESSAGE_PROCESS_CURRENT_APPLICATION_SETTINGS:I = 0xda

.field static final MESSAGE_PROCESS_FOLDER_PATH:I = 0xd4

.field static final MESSAGE_PROCESS_GET_FOLDER_ITEMS:I = 0xd1

.field static final MESSAGE_PROCESS_GET_FOLDER_ITEMS_OUT_OF_RANGE:I = 0xd2

.field static final MESSAGE_PROCESS_GET_PLAYER_ITEMS:I = 0xd3

.field static final MESSAGE_PROCESS_IMAGE_DOWNLOADED:I = 0x190

.field static final MESSAGE_PROCESS_NOW_PLAYING_CONTENTS_CHANGED:I = 0xd8

.field static final MESSAGE_PROCESS_PLAY_POS_CHANGED:I = 0xce

.field static final MESSAGE_PROCESS_PLAY_STATUS_CHANGED:I = 0xcf

.field static final MESSAGE_PROCESS_RECEIVED_COVER_ART_PSM:I = 0xdc

.field static final MESSAGE_PROCESS_REGISTER_ABS_VOL_NOTIFICATION:I = 0xcc

.field static final MESSAGE_PROCESS_SET_ABS_VOL_CMD:I = 0xcb

.field static final MESSAGE_PROCESS_SET_ADDRESSED_PLAYER:I = 0xd6

.field static final MESSAGE_PROCESS_SET_BROWSED_PLAYER:I = 0xd5

.field static final MESSAGE_PROCESS_SUPPORTED_APPLICATION_SETTINGS:I = 0xd9

.field static final MESSAGE_PROCESS_TRACK_CHANGED:I = 0xcd

.field static final MESSAGE_PROCESS_VOLUME_CHANGED_NOTIFICATION:I = 0xd0

.field static final MSG_AVRCP_PASSTHRU:I = 0x12e

.field static final MSG_AVRCP_SET_REPEAT:I = 0x130

.field static final MSG_AVRCP_SET_SHUFFLE:I = 0x12f

.field private static final NOTIFICATION_RSP_TYPE_CHANGED:B = 0x1t

.field private static final NOTIFICATION_RSP_TYPE_INTERIM:B = 0x0t

.field static final STACK_EVENT:I = 0xc8

.field static final TAG:Ljava/lang/String; = "AvrcpControllerStateMachine"

.field private static sActiveDevice:Landroid/bluetooth/BluetoothDevice;


# instance fields
.field private mAddressedPlayer:Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;

.field private mAddressedPlayerId:I

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mAvailablePlayerList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;",
            ">;"
        }
    .end annotation
.end field

.field final mBrowseTree:Lcom/android/bluetooth/avrcpcontroller/BrowseTree;

.field mBrowsingConnected:Z

.field protected final mConnected:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;

.field protected final mConnecting:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connecting;

.field protected final mCoverArtManager:Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;

.field protected mCoverArtPsm:I

.field protected final mDevice:Landroid/bluetooth/BluetoothDevice;

.field protected final mDeviceAddress:[B

.field protected final mDisconnected:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Disconnected;

.field protected final mDisconnecting:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Disconnecting;

.field mGetFolderList:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;

.field private final mIsVolumeFixed:Z

.field protected mMostRecentState:I

.field mRemoteControlConnected:Z

.field protected final mService:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;

.field mSessionCallbacks:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

.field private mVolumeChangedNotificationsToIgnore:I

.field private mVolumeNotificationLabel:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 53
    const-string v0, "AvrcpControllerStateMachine"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->DBG:Z

    return-void
.end method

.method constructor <init>(Landroid/bluetooth/BluetoothDevice;Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;)V
    .locals 3

    .line 141
    const-string v0, "AvrcpControllerStateMachine"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/statemachine/StateMachine;-><init>(Ljava/lang/String;)V

    .line 122
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mMostRecentState:I

    .line 124
    iput-boolean v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mRemoteControlConnected:Z

    .line 125
    iput-boolean v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mBrowsingConnected:Z

    .line 127
    new-instance v1, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;

    invoke-direct {v1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;-><init>()V

    iput-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mAddressedPlayer:Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;

    .line 128
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mAddressedPlayerId:I

    .line 129
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mAvailablePlayerList:Landroid/util/SparseArray;

    .line 130
    iput v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mVolumeChangedNotificationsToIgnore:I

    .line 131
    iput v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mVolumeNotificationLabel:I

    .line 133
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mGetFolderList:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;

    .line 1055
    new-instance v1, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$1;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$1;-><init>(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;)V

    iput-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mSessionCallbacks:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    .line 142
    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 143
    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mDeviceAddress:[B

    .line 144
    iput-object p2, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mService:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;

    .line 145
    iput v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mCoverArtPsm:I

    .line 146
    invoke-virtual {p2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->getCoverArtManager()Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mCoverArtManager:Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;

    .line 147
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->logD(Ljava/lang/String;)V

    .line 149
    new-instance p1, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;

    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p1, v0}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mBrowseTree:Lcom/android/bluetooth/avrcpcontroller/BrowseTree;

    .line 150
    new-instance p1, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Disconnected;

    invoke-direct {p1, p0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Disconnected;-><init>(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;)V

    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mDisconnected:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Disconnected;

    .line 151
    new-instance p1, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connecting;

    invoke-direct {p1, p0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connecting;-><init>(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;)V

    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mConnecting:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connecting;

    .line 152
    new-instance p1, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;

    invoke-direct {p1, p0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;-><init>(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;)V

    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mConnected:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;

    .line 153
    new-instance p1, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Disconnecting;

    invoke-direct {p1, p0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Disconnecting;-><init>(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;)V

    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mDisconnecting:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Disconnecting;

    .line 155
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mDisconnected:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Disconnected;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->addState(Lcom/android/bluetooth/statemachine/State;)V

    .line 156
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mConnecting:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connecting;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->addState(Lcom/android/bluetooth/statemachine/State;)V

    .line 157
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mConnected:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->addState(Lcom/android/bluetooth/statemachine/State;)V

    .line 158
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mDisconnecting:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Disconnecting;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->addState(Lcom/android/bluetooth/statemachine/State;)V

    .line 160
    new-instance p1, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;

    invoke-direct {p1, p0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;-><init>(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;)V

    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mGetFolderList:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;

    .line 161
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mConnected:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;

    invoke-virtual {p0, p1, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->addState(Lcom/android/bluetooth/statemachine/State;Lcom/android/bluetooth/statemachine/State;)V

    .line 162
    const-string p1, "audio"

    invoke-virtual {p2, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mAudioManager:Landroid/media/AudioManager;

    .line 163
    invoke-virtual {p1}, Landroid/media/AudioManager;->isVolumeFixed()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mIsVolumeFixed:Z

    .line 165
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mDisconnected:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Disconnected;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->setInitialState(Lcom/android/bluetooth/statemachine/State;)V

    .line 166
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-static {p0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->logD(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;)Z
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->requestActive()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->notifyChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mAddressedPlayerId:I

    return p0
.end method

.method static synthetic access$1102(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;I)I
    .locals 0

    .line 51
    iput p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mAddressedPlayerId:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;)Landroid/util/SparseArray;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mAvailablePlayerList:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->notifyChanged(Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;)Z
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->shouldDownloadBrowsedImages()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;I)V
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;I)V
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;I)V
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;I)V
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$208(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;)I
    .locals 2

    .line 51
    iget v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mVolumeChangedNotificationsToIgnore:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mVolumeChangedNotificationsToIgnore:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;I)V
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;II)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->handleAbsVolumeRequest(II)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mVolumeNotificationLabel:I

    return p0
.end method

.method static synthetic access$502(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;I)I
    .locals 0

    .line 51
    iput p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mVolumeNotificationLabel:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;)I
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->getAbsVolume()I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;)Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mAddressedPlayer:Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;

    return-object p0
.end method

.method static synthetic access$702(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;)Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mAddressedPlayer:Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->downloadImageIfNeeded(Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;)Z
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->shouldRequestFocus()Z

    move-result p0

    return p0
.end method

.method private downloadImageIfNeeded(Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;)V
    .locals 3

    .line 1042
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mCoverArtManager:Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;

    if-nez v0, :cond_0

    return-void

    .line 1043
    :cond_0
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->getCoverArtUuid()Ljava/lang/String;

    move-result-object v0

    .line 1044
    nop

    .line 1045
    if-eqz v0, :cond_2

    .line 1046
    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mCoverArtManager:Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;

    iget-object v2, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->getImageUri(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1047
    if-eqz v1, :cond_1

    .line 1048
    invoke-virtual {p1, v1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->setCoverArtLocation(Landroid/net/Uri;)V

    goto :goto_0

    .line 1050
    :cond_1
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mCoverArtManager:Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;

    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v1, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->downloadImage(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Landroid/net/Uri;

    .line 1053
    :cond_2
    :goto_0
    return-void
.end method

.method private getAbsVolume()I
    .locals 4

    .line 1027
    iget-boolean v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mIsVolumeFixed:Z

    const/16 v1, 0x7f

    if-eqz v0, :cond_0

    .line 1028
    return v1

    .line 1030
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    .line 1031
    iget-object v3, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 1032
    mul-int/2addr v2, v1

    div-int/2addr v2, v0

    .line 1033
    return v2
.end method

.method private handleAbsVolumeRequest(II)V
    .locals 3

    .line 989
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleAbsVolumeRequest: absVol = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", label = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->logD(Ljava/lang/String;)V

    .line 990
    iget-boolean v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mIsVolumeFixed:Z

    if-eqz v0, :cond_0

    .line 991
    const-string p1, "Source volume is assumed to be fixed, responding with max volume"

    invoke-static {p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->logD(Ljava/lang/String;)V

    .line 992
    const/16 p1, 0x7f

    goto :goto_0

    .line 994
    :cond_0
    iget v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mVolumeChangedNotificationsToIgnore:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mVolumeChangedNotificationsToIgnore:I

    .line 995
    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->removeMessages(I)V

    .line 996
    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->sendMessageDelayed(IJ)V

    .line 998
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->setAbsVolume(I)V

    .line 1000
    :goto_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mService:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;

    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mDeviceAddress:[B

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->sendAbsVolRspNative([BII)V

    .line 1001
    return-void
.end method

.method private static logD(Ljava/lang/String;)V
    .locals 1

    .line 283
    sget-boolean v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    .line 284
    const-string v0, "AvrcpControllerStateMachine"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_0
    return-void
.end method

.method private notifyChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 1

    .line 387
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    invoke-static {p1}, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->notifyChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 390
    :cond_0
    return-void
.end method

.method private notifyChanged(Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;)V
    .locals 2

    .line 378
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->getScope()B

    move-result v0

    .line 379
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    if-ne v0, v1, :cond_1

    .line 381
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    :cond_0
    invoke-static {p1}, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->notifyChanged(Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;)V

    .line 384
    :cond_1
    return-void
.end method

.method private requestActive()Z
    .locals 2

    .line 239
    sget-object v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->sActiveDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1

    .line 240
    invoke-static {}, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 244
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 242
    :cond_1
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->setActive(Z)Z

    move-result v0

    return v0
.end method

.method private setAbsVolume(I)V
    .locals 6

    .line 1009
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    .line 1010
    iget-object v2, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 1011
    mul-int v3, v0, p1

    div-int/lit8 v3, v3, 0x7f

    .line 1012
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setAbsVolme: absVol = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", reqLocal = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", curLocal = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", maxLocal = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->logD(Ljava/lang/String;)V

    .line 1020
    if-eq v3, v2, :cond_0

    .line 1021
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mAudioManager:Landroid/media/AudioManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v1, v3, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1024
    :cond_0
    return-void
.end method

.method private shouldDownloadBrowsedImages()Z
    .locals 2

    .line 1037
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mService:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1038
    const v1, 0x7f030001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1037
    return v0
.end method

.method private shouldRequestFocus()Z
    .locals 2

    .line 1169
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mService:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1170
    const/high16 v1, 0x7f030000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1169
    return v0
.end method


# virtual methods
.method protected broadcastConnectionStateChanged(I)V
    .locals 3

    .line 1151
    iget v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mMostRecentState:I

    if-ne v0, p1, :cond_0

    .line 1152
    return-void

    .line 1154
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1155
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->AVRCP_CONTROLLER:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/MetricsLogger;->logProfileConnectionEvent(Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;)V

    .line 1158
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mMostRecentState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->logD(Ljava/lang/String;)V

    .line 1159
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.avrcp-controller.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1160
    iget v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mMostRecentState:I

    const-string v2, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1161
    const-string v1, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1162
    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1163
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1164
    iput p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mMostRecentState:I

    .line 1165
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mService:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;

    const-string v1, "android.permission.BLUETOOTH"

    invoke-virtual {p1, v0, v1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1166
    return-void
.end method

.method public connect(Lcom/android/bluetooth/avrcpcontroller/StackEvent;)Z
    .locals 1

    .line 195
    iget-boolean v0, p1, Lcom/android/bluetooth/avrcpcontroller/StackEvent;->mBrowsingConnected:Z

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->onBrowsingConnected()V

    .line 198
    :cond_0
    iget-boolean p1, p1, Lcom/android/bluetooth/avrcpcontroller/StackEvent;->mRemoteControlConnected:Z

    iput-boolean p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mRemoteControlConnected:Z

    .line 199
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->sendMessage(I)V

    .line 200
    return p1
.end method

.method declared-synchronized connectCoverArt()V
    .locals 3

    monitor-enter p0

    .line 318
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mCoverArtManager:Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mCoverArtPsm:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mCoverArtManager:Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;

    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 319
    invoke-virtual {v0, v1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempting to connect to AVRCP BIP, psm: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mCoverArtPsm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->logD(Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mCoverArtManager:Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;

    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget v2, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mCoverArtPsm:I

    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->connect(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    :cond_0
    monitor-exit p0

    return-void

    .line 317
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public disconnect()V
    .locals 1

    .line 207
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->sendMessage(I)V

    .line 208
    return-void
.end method

.method declared-synchronized disconnectCoverArt()V
    .locals 2

    monitor-enter p0

    .line 335
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mCoverArtManager:Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;

    if-eqz v0, :cond_0

    .line 336
    const-string v0, "Disconnect BIP cover artwork"

    invoke-static {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->logD(Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mCoverArtManager:Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;

    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    :cond_0
    monitor-exit p0

    return-void

    .line 334
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dump(Ljava/lang/StringBuilder;)V
    .locals 2

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 224
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isActive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->isActive()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method findNode(Ljava/lang/String;)Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;
    .locals 1

    .line 169
    const-string v0, "FindNode"

    invoke-static {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->logD(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mBrowseTree:Lcom/android/bluetooth/avrcpcontroller/BrowseTree;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->findBrowseNodeByID(Ljava/lang/String;)Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentTrack()Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mAddressedPlayer:Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->getCurrentTrack()Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    monitor-enter p0

    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getState()I
    .locals 1

    .line 179
    iget v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mMostRecentState:I

    return v0
.end method

.method isActive()Z
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    sget-object v1, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->sActiveDevice:Landroid/bluetooth/BluetoothDevice;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method nowPlayingContentChanged()V
    .locals 2

    .line 402
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mBrowseTree:Lcom/android/bluetooth/avrcpcontroller/BrowseTree;

    iget-object v0, v0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mNowPlayingNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->setCached(Z)V

    .line 403
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->removeUnusedArtworkFromBrowseTree()V

    .line 404
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mBrowseTree:Lcom/android/bluetooth/avrcpcontroller/BrowseTree;

    iget-object v0, v0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mNowPlayingNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    const/16 v1, 0x12c

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 405
    return-void
.end method

.method declared-synchronized onBrowsingConnected()V
    .locals 2

    monitor-enter p0

    .line 289
    :try_start_0
    iget-boolean v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mBrowsingConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 290
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->sBrowseTree:Lcom/android/bluetooth/avrcpcontroller/BrowseTree;

    iget-object v0, v0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mRootNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mBrowseTree:Lcom/android/bluetooth/avrcpcontroller/BrowseTree;

    iget-object v1, v1, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mRootNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->addChild(Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;)Z

    .line 291
    sget-object v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->sBrowseTree:Lcom/android/bluetooth/avrcpcontroller/BrowseTree;

    iget-object v0, v0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mRootNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    invoke-static {v0}, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->notifyChanged(Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;)V

    .line 293
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mBrowsingConnected:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 294
    monitor-exit p0

    return-void

    .line 288
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized onBrowsingDisconnected()V
    .locals 4

    monitor-enter p0

    .line 297
    :try_start_0
    iget-boolean v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mBrowsingConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 298
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mAddressedPlayer:Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->setPlayStatus(I)V

    .line 299
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mAddressedPlayer:Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->getCurrentTrack()Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;

    move-result-object v0

    .line 300
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->getCoverArtUuid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 301
    :goto_0
    iget-object v2, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mAddressedPlayer:Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->updateCurrentTrack(Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;)V

    .line 302
    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mBrowseTree:Lcom/android/bluetooth/avrcpcontroller/BrowseTree;

    iget-object v1, v1, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mNowPlayingNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->setCached(Z)V

    .line 303
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->isActive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 304
    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mBrowseTree:Lcom/android/bluetooth/avrcpcontroller/BrowseTree;

    iget-object v1, v1, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mNowPlayingNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    invoke-static {v1}, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->notifyChanged(Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;)V

    .line 306
    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mService:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->sBrowseTree:Lcom/android/bluetooth/avrcpcontroller/BrowseTree;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->sBrowseTree:Lcom/android/bluetooth/avrcpcontroller/BrowseTree;

    iget-object v1, v1, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mRootNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    if-eqz v1, :cond_3

    .line 307
    sget-object v1, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->sBrowseTree:Lcom/android/bluetooth/avrcpcontroller/BrowseTree;

    iget-object v1, v1, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mRootNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    iget-object v3, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mBrowseTree:Lcom/android/bluetooth/avrcpcontroller/BrowseTree;

    iget-object v3, v3, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mRootNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    invoke-virtual {v1, v3}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->removeChild(Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;)V

    .line 309
    sget-object v1, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->sBrowseTree:Lcom/android/bluetooth/avrcpcontroller/BrowseTree;

    iget-object v1, v1, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mRootNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    invoke-static {v1}, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->notifyChanged(Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;)V

    .line 311
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->removeUnusedArtwork(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->removeUnusedArtworkFromBrowseTree()V

    .line 313
    iput-boolean v2, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mBrowsingConnected:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 314
    monitor-exit p0

    return-void

    .line 296
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public playItem(Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;)V
    .locals 1

    .line 398
    const/16 v0, 0x12d

    invoke-virtual {p0, v0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 399
    return-void
.end method

.method declared-synchronized refreshCoverArt()V
    .locals 2

    monitor-enter p0

    .line 326
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mCoverArtManager:Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mCoverArtPsm:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mCoverArtManager:Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;

    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 327
    invoke-virtual {v0, v1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempting to refresh AVRCP BIP OBEX session, psm: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mCoverArtPsm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->logD(Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mCoverArtManager:Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;

    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->refreshSession(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    :cond_0
    monitor-exit p0

    return-void

    .line 325
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized removeUnusedArtwork(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 346
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeUnusedArtwork("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->logD(Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mCoverArtManager:Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 348
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->getCurrentTrack()Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;

    move-result-object v0

    .line 349
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->getCoverArtUuid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 350
    :goto_0
    if-eqz p1, :cond_2

    .line 351
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mBrowseTree:Lcom/android/bluetooth/avrcpcontroller/BrowseTree;

    .line 352
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->getNodesUsingCoverArt(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 353
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mCoverArtManager:Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;

    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->removeImage(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 356
    :cond_2
    monitor-exit p0

    return-void

    .line 345
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized removeUnusedArtworkFromBrowseTree()V
    .locals 5

    monitor-enter p0

    .line 363
    :try_start_0
    const-string v0, "removeUnusedArtworkFromBrowseTree()"

    invoke-static {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->logD(Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mCoverArtManager:Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 365
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->getCurrentTrack()Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;

    move-result-object v0

    .line 366
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->getCoverArtUuid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 367
    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mBrowseTree:Lcom/android/bluetooth/avrcpcontroller/BrowseTree;

    invoke-virtual {v1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->getAndClearUnusedCoverArt()Ljava/util/ArrayList;

    move-result-object v1

    .line 368
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 369
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 370
    iget-object v3, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mCoverArtManager:Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;

    iget-object v4, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4, v2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->removeImage(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 372
    :cond_2
    goto :goto_1

    .line 373
    :cond_3
    monitor-exit p0

    return-void

    .line 362
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method requestContents(Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;)V
    .locals 2

    .line 393
    const/16 v0, 0x12c

    invoke-virtual {p0, v0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fetching "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->logD(Ljava/lang/String;)V

    .line 395
    return-void
.end method

.method setActive(Z)Z
    .locals 3

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setActive("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->logD(Ljava/lang/String;)V

    .line 252
    const/4 v0, 0x1

    if-eqz p1, :cond_4

    .line 253
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->isActive()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 254
    return v0

    .line 257
    :cond_0
    invoke-static {}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->getA2dpSinkService()Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    move-result-object p1

    .line 258
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 259
    return v1

    .line 262
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mDeviceAddress:[B

    invoke-virtual {p1, v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->setActiveDeviceNative([B)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 263
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    sput-object p1, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->sActiveDevice:Landroid/bluetooth/BluetoothDevice;

    .line 264
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mSessionCallbacks:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-static {p1}, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->addressedPlayerChanged(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V

    .line 265
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mAddressedPlayer:Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;

    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->notifyChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 266
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mBrowseTree:Lcom/android/bluetooth/avrcpcontroller/BrowseTree;

    iget-object p1, p1, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mNowPlayingNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    invoke-static {p1}, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->notifyChanged(Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;)V

    .line 268
    :cond_2
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    sget-object v2, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->sActiveDevice:Landroid/bluetooth/BluetoothDevice;

    if-ne p1, v2, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0

    .line 269
    :cond_4
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->isActive()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 270
    const/4 p1, 0x0

    sput-object p1, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->sActiveDevice:Landroid/bluetooth/BluetoothDevice;

    .line 271
    invoke-static {p1}, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->trackChanged(Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;)V

    .line 272
    invoke-static {p1}, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->addressedPlayerChanged(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V

    .line 274
    :cond_5
    return v0
.end method

.method protected unhandledMessage(Landroid/os/Message;)V
    .locals 2

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled message in state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->getCurrentState()Lcom/android/bluetooth/statemachine/IState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "msg.what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AvrcpControllerStateMachine"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    return-void
.end method
