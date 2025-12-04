.class public Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;
.super Ljava/lang/Object;
.source "AvrcpItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;
    }
.end annotation


# static fields
.field public static final AVRCP_ITEM_KEY_UID:Ljava/lang/String; = "avrcp-item-key-uid"

.field private static final DBG:Z

.field public static final FOLDER_ALBUMS:I = 0x2

.field public static final FOLDER_ARTISTS:I = 0x3

.field public static final FOLDER_GENRES:I = 0x4

.field public static final FOLDER_MIXED:I = 0x0

.field public static final FOLDER_PLAYLISTS:I = 0x5

.field public static final FOLDER_TITLES:I = 0x1

.field public static final FOLDER_YEARS:I = 0x6

.field public static final MEDIA_AUDIO:I = 0x0

.field public static final MEDIA_VIDEO:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AvrcpItem"

.field public static final TYPE_FOLDER:I = 0x2

.field public static final TYPE_MEDIA:I = 0x3

.field public static final TYPE_PLAYER:I = 0x1


# instance fields
.field private mAlbumName:Ljava/lang/String;

.field private mArtistName:Ljava/lang/String;

.field private mBrowsable:Z

.field private mCoverArtHandle:Ljava/lang/String;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mDisplayableName:Ljava/lang/String;

.field private mGenre:Ljava/lang/String;

.field private mImageUri:Landroid/net/Uri;

.field private mImageUuid:Ljava/lang/String;

.field private mItemType:I

.field private mPlayable:Z

.field private mPlayingTime:J

.field private mTitle:Ljava/lang/String;

.field private mTotalNumberOfTracks:J

.field private mTrackNumber:J

.field private mType:I

.field private mUid:J

.field private mUuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    const-string v0, "AvrcpItem"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->DBG:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mPlayable:Z

    .line 87
    iput-boolean v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mBrowsable:Z

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mImageUuid:Ljava/lang/String;

    .line 99
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$1;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;-><init>()V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;I)I
    .locals 0

    .line 35
    iput p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mType:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mPlayable:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mBrowsable:Z

    return p1
.end method

.method static synthetic access$1402(Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;J)J
    .locals 0

    .line 35
    iput-wide p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mUid:J

    return-wide p1
.end method

.method static synthetic access$1502(Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mUuid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mDisplayableName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mArtistName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mAlbumName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;J)J
    .locals 0

    .line 35
    iput-wide p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mTrackNumber:J

    return-wide p1
.end method

.method static synthetic access$502(Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;J)J
    .locals 0

    .line 35
    iput-wide p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mTotalNumberOfTracks:J

    return-wide p1
.end method

.method static synthetic access$602(Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mGenre:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;J)J
    .locals 0

    .line 35
    iput-wide p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mPlayingTime:J

    return-wide p1
.end method

.method static synthetic access$802(Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mCoverArtHandle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;I)I
    .locals 0

    .line 35
    iput p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mItemType:I

    return p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 246
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 247
    return v0

    .line 250
    :cond_0
    instance-of v1, p1, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 251
    return v2

    .line 254
    :cond_1
    check-cast p1, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;

    .line 255
    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mUuid:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 256
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mUid:J

    .line 257
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->getUid()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mItemType:I

    .line 258
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->getItemType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mType:I

    .line 259
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mTitle:Ljava/lang/String;

    .line 260
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mDisplayableName:Ljava/lang/String;

    .line 261
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->getDisplayableName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mArtistName:Ljava/lang/String;

    .line 262
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->getArtistName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mAlbumName:Ljava/lang/String;

    .line 263
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->getAlbumName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mTrackNumber:J

    .line 264
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->getTrackNumber()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mTotalNumberOfTracks:J

    .line 265
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->getTotalNumberOfTracks()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mGenre:Ljava/lang/String;

    .line 266
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->getGenre()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mPlayingTime:J

    .line 267
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->getPlayingTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mCoverArtHandle:Ljava/lang/String;

    .line 268
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->getCoverArtHandle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mPlayable:Z

    .line 269
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->isPlayable()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mBrowsable:Z

    .line 270
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->isBrowsable()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mImageUri:Landroid/net/Uri;

    .line 271
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->getCoverArtLocation()Landroid/net/Uri;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 255
    :goto_0
    return v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mAlbumName:Ljava/lang/String;

    return-object v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mArtistName:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverArtHandle()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mCoverArtHandle:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getCoverArtLocation()Landroid/net/Uri;
    .locals 1

    monitor-enter p0

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mImageUri:Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCoverArtUuid()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mImageUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getDisplayableName()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mDisplayableName:Ljava/lang/String;

    return-object v0
.end method

.method public getGenre()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mGenre:Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()I
    .locals 1

    .line 114
    iget v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mItemType:I

    return v0
.end method

.method public getPlayingTime()J
    .locals 2

    .line 150
    iget-wide v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mPlayingTime:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalNumberOfTracks()J
    .locals 2

    .line 142
    iget-wide v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mTotalNumberOfTracks:J

    return-wide v0
.end method

.method public getTrackNumber()J
    .locals 2

    .line 138
    iget-wide v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mTrackNumber:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .line 118
    iget v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mType:I

    return v0
.end method

.method public getUid()J
    .locals 2

    .line 106
    iget-wide v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mUid:J

    return-wide v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mUuid:Ljava/lang/String;

    return-object v0
.end method

.method public isBrowsable()Z
    .locals 1

    .line 158
    iget-boolean v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mBrowsable:Z

    return v0
.end method

.method public isPlayable()Z
    .locals 1

    .line 154
    iget-boolean v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mPlayable:Z

    return v0
.end method

.method public declared-synchronized setCoverArtLocation(Landroid/net/Uri;)V
    .locals 0

    monitor-enter p0

    .line 178
    :try_start_0
    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mImageUri:Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    monitor-exit p0

    return-void

    .line 177
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setCoverArtUuid(Ljava/lang/String;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mImageUuid:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public toMediaItem()Landroid/support/v4/media/MediaBrowserCompat$MediaItem;
    .locals 5

    .line 210
    new-instance v0, Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    invoke-direct {v0}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;-><init>()V

    .line 212
    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setMediaId(Ljava/lang/String;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 214
    nop

    .line 215
    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mDisplayableName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 216
    goto :goto_0

    .line 217
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mTitle:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 218
    goto :goto_0

    .line 217
    :cond_1
    const/4 v1, 0x0

    .line 220
    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 222
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->getCoverArtLocation()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setIconUri(Landroid/net/Uri;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 224
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 225
    iget-wide v2, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mUid:J

    const-string v4, "avrcp-item-key-uid"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 226
    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setExtras(Landroid/os/Bundle;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 228
    const/4 v1, 0x0

    .line 229
    iget-boolean v2, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mPlayable:Z

    if-eqz v2, :cond_2

    const/4 v1, 0x2

    .line 230
    :cond_2
    iget-boolean v2, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mBrowsable:Z

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x1

    .line 232
    :cond_3
    new-instance v2, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->build()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;-><init>(Landroid/support/v4/media/MediaDescriptionCompat;I)V

    return-object v2
.end method

.method public toMediaMetadata()Landroid/support/v4/media/MediaMetadataCompat;
    .locals 5

    .line 185
    new-instance v0, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    invoke-direct {v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    .line 186
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->getCoverArtLocation()Landroid/net/Uri;

    move-result-object v1

    .line 187
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 188
    :goto_0
    iget-object v2, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mUuid:Ljava/lang/String;

    const-string v3, "android.media.metadata.MEDIA_ID"

    invoke-virtual {v0, v3, v2}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 189
    iget-object v2, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mDisplayableName:Ljava/lang/String;

    const-string v3, "android.media.metadata.DISPLAY_TITLE"

    invoke-virtual {v0, v3, v2}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 190
    iget-object v2, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mTitle:Ljava/lang/String;

    const-string v3, "android.media.metadata.TITLE"

    invoke-virtual {v0, v3, v2}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 191
    iget-object v2, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mArtistName:Ljava/lang/String;

    const-string v3, "android.media.metadata.ARTIST"

    invoke-virtual {v0, v3, v2}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 192
    iget-object v2, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mAlbumName:Ljava/lang/String;

    const-string v3, "android.media.metadata.ALBUM"

    invoke-virtual {v0, v3, v2}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 193
    iget-wide v2, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mTrackNumber:J

    const-string v4, "android.media.metadata.TRACK_NUMBER"

    invoke-virtual {v0, v4, v2, v3}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putLong(Ljava/lang/String;J)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 194
    iget-wide v2, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mTotalNumberOfTracks:J

    const-string v4, "android.media.metadata.NUM_TRACKS"

    invoke-virtual {v0, v4, v2, v3}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putLong(Ljava/lang/String;J)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 195
    iget-object v2, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mGenre:Ljava/lang/String;

    const-string v3, "android.media.metadata.GENRE"

    invoke-virtual {v0, v3, v2}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 196
    iget-wide v2, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mPlayingTime:J

    const-string v4, "android.media.metadata.DURATION"

    invoke-virtual {v0, v4, v2, v3}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putLong(Ljava/lang/String;J)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 197
    const-string v2, "android.media.metadata.DISPLAY_ICON_URI"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 198
    const-string v2, "android.media.metadata.ART_URI"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 199
    const-string v2, "android.media.metadata.ALBUM_ART_URI"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 200
    iget v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mItemType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 201
    iget v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mType:I

    int-to-long v1, v1

    const-string v3, "android.media.metadata.BT_FOLDER_TYPE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putLong(Ljava/lang/String;J)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 203
    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AvrcpItem{mUuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mUid:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mItemType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mItemType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDisplayableName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mDisplayableName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPlayable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mPlayable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mBrowsable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mBrowsable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mCoverArtHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->getCoverArtHandle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mImageUuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mImageUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mImageUri"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->mImageUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 237
    return-object v0
.end method
