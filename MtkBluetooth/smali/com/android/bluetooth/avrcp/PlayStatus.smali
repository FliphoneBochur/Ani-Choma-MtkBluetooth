.class Lcom/android/bluetooth/avrcp/PlayStatus;
.super Ljava/lang/Object;
.source "PlayStatus.java"


# static fields
.field static final ERROR:B = -0x1t

.field static final FWD_SEEK:B = 0x3t

.field static final PAUSED:B = 0x2t

.field static final PLAYING:B = 0x1t

.field static final REV_SEEK:B = 0x4t

.field static final STOPPED:B


# instance fields
.field public duration:J

.field public position:J

.field public state:B


# direct methods
.method constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/bluetooth/avrcp/PlayStatus;->position:J

    .line 35
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/bluetooth/avrcp/PlayStatus;->duration:J

    .line 36
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/android/bluetooth/avrcp/PlayStatus;->state:B

    return-void
.end method

.method static fromPlaybackState(Landroid/media/session/PlaybackState;J)Lcom/android/bluetooth/avrcp/PlayStatus;
    .locals 3

    .line 40
    new-instance v0, Lcom/android/bluetooth/avrcp/PlayStatus;

    invoke-direct {v0}, Lcom/android/bluetooth/avrcp/PlayStatus;-><init>()V

    .line 41
    if-nez p0, :cond_0

    return-object v0

    .line 43
    :cond_0
    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/bluetooth/avrcp/PlayStatus;->playbackStateToAvrcpState(I)B

    move-result v1

    iput-byte v1, v0, Lcom/android/bluetooth/avrcp/PlayStatus;->state:B

    .line 44
    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/bluetooth/avrcp/PlayStatus;->position:J

    .line 45
    iput-wide p1, v0, Lcom/android/bluetooth/avrcp/PlayStatus;->duration:J

    .line 46
    return-object v0
.end method

.method static playbackStateToAvrcpState(I)B
    .locals 0

    .line 50
    packed-switch p0, :pswitch_data_0

    .line 74
    :pswitch_0
    const/4 p0, -0x1

    return p0

    .line 70
    :pswitch_1
    const/4 p0, 0x4

    return p0

    .line 66
    :pswitch_2
    const/4 p0, 0x3

    return p0

    .line 58
    :pswitch_3
    const/4 p0, 0x1

    return p0

    .line 61
    :pswitch_4
    const/4 p0, 0x2

    return p0

    .line 54
    :pswitch_5
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/android/bluetooth/avrcp/PlayStatus;->state:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/bluetooth/avrcp/PlayStatus;->position:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/bluetooth/avrcp/PlayStatus;->duration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
