.class Lcom/android/bluetooth/avrcp/AvrcpEventLogger$Event;
.super Ljava/lang/Object;
.source "AvrcpEventLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/avrcp/AvrcpEventLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Event"
.end annotation


# instance fields
.field private final mMsg:Ljava/lang/String;

.field private final mTimeStamp:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/bluetooth/avrcp/AvrcpEventLogger;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/avrcp/AvrcpEventLogger;Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/android/bluetooth/avrcp/AvrcpEventLogger$Event;->this$0:Lcom/android/bluetooth/avrcp/AvrcpEventLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Lcom/android/bluetooth/Utils;->getLocalTimeString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/AvrcpEventLogger$Event;->mTimeStamp:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/android/bluetooth/avrcp/AvrcpEventLogger$Event;->mMsg:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpEventLogger$Event;->mTimeStamp:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpEventLogger$Event;->mMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 42
    return-object v0
.end method
