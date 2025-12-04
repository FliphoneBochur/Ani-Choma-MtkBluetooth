.class Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$1;
.super Landroid/support/v4/media/session/MediaSessionCompat$Callback;
.source "AvrcpControllerStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;)V
    .locals 0

    .line 1055
    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$1;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFastForward()V
    .locals 3

    .line 1116
    const-string v0, "onFastForward"

    invoke-static {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$000(Ljava/lang/String;)V

    .line 1117
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$1;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    const/16 v1, 0x12e

    const/16 v2, 0x49

    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->sendMessage(II)V

    .line 1118
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 1065
    const-string v0, "onPause"

    invoke-static {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$000(Ljava/lang/String;)V

    .line 1066
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$1;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    const/16 v1, 0x12e

    const/16 v2, 0x46

    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->sendMessage(II)V

    .line 1067
    return-void
.end method

.method public onPlay()V
    .locals 3

    .line 1058
    const-string v0, "onPlay"

    invoke-static {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$000(Ljava/lang/String;)V

    .line 1059
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$1;->onPrepare()V

    .line 1060
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$1;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    const/16 v1, 0x12e

    const/16 v2, 0x44

    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->sendMessage(II)V

    .line 1061
    return-void
.end method

.method public onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 1122
    const-string p2, "onPlayFromMediaId"

    invoke-static {p2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$000(Ljava/lang/String;)V

    .line 1124
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$1;->onPrepare()V

    .line 1125
    iget-object p2, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$1;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    iget-object p2, p2, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mBrowseTree:Lcom/android/bluetooth/avrcpcontroller/BrowseTree;

    invoke-virtual {p2, p1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->findBrowseNodeByID(Ljava/lang/String;)Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    move-result-object p2

    .line 1126
    if-eqz p2, :cond_0

    .line 1128
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$1;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    const/16 v0, 0x12d

    invoke-virtual {p1, v0, p2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 1131
    :cond_0
    iget-object p2, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$1;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    const/16 v0, 0x12e

    const/16 v1, 0x46

    invoke-virtual {p2, v0, v1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->sendMessage(II)V

    .line 1132
    iget-object p2, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$1;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    iget-object p2, p2, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mService:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;

    invoke-virtual {p2, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->playItem(Ljava/lang/String;)V

    .line 1134
    :goto_0
    return-void
.end method

.method public onPrepare()V
    .locals 3

    .line 1101
    const-string v0, "onPrepare"

    invoke-static {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$000(Ljava/lang/String;)V

    .line 1102
    invoke-static {}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->getA2dpSinkService()Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    move-result-object v0

    .line 1103
    if-eqz v0, :cond_0

    .line 1104
    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$1;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    iget-object v1, v1, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->requestAudioFocus(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 1106
    :cond_0
    return-void
.end method

.method public onRewind()V
    .locals 3

    .line 1110
    const-string v0, "onRewind"

    invoke-static {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$000(Ljava/lang/String;)V

    .line 1111
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$1;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    const/16 v1, 0x12e

    const/16 v2, 0x48

    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->sendMessage(II)V

    .line 1112
    return-void
.end method

.method public onSetRepeatMode(I)V
    .locals 2

    .line 1138
    const-string v0, "onSetRepeatMode"

    invoke-static {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$000(Ljava/lang/String;)V

    .line 1139
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$1;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    const/16 v1, 0x130

    invoke-virtual {v0, v1, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->sendMessage(II)V

    .line 1140
    return-void
.end method

.method public onSetShuffleMode(I)V
    .locals 2

    .line 1144
    const-string v0, "onSetShuffleMode"

    invoke-static {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$000(Ljava/lang/String;)V

    .line 1145
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$1;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    const/16 v1, 0x12f

    invoke-virtual {v0, v1, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->sendMessage(II)V

    .line 1147
    return-void
.end method

.method public onSkipToNext()V
    .locals 3

    .line 1071
    const-string v0, "onSkipToNext"

    invoke-static {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$000(Ljava/lang/String;)V

    .line 1072
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$1;->onPrepare()V

    .line 1073
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$1;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    const/16 v1, 0x12e

    const/16 v2, 0x4b

    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->sendMessage(II)V

    .line 1074
    return-void
.end method

.method public onSkipToPrevious()V
    .locals 3

    .line 1078
    const-string v0, "onSkipToPrevious"

    invoke-static {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$000(Ljava/lang/String;)V

    .line 1079
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$1;->onPrepare()V

    .line 1080
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$1;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    const/16 v1, 0x12e

    const/16 v2, 0x4c

    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->sendMessage(II)V

    .line 1081
    return-void
.end method

.method public onSkipToQueueItem(J)V
    .locals 2

    .line 1085
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSkipToQueueItem id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$000(Ljava/lang/String;)V

    .line 1086
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$1;->onPrepare()V

    .line 1087
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$1;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    iget-object v0, v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mBrowseTree:Lcom/android/bluetooth/avrcpcontroller/BrowseTree;

    long-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->getTrackFromNowPlayingList(I)Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    move-result-object p1

    .line 1088
    if-eqz p1, :cond_0

    .line 1089
    iget-object p2, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$1;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    const/16 v0, 0x12d

    invoke-virtual {p2, v0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1091
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 3

    .line 1095
    const-string v0, "onStop"

    invoke-static {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$000(Ljava/lang/String;)V

    .line 1096
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$1;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    const/16 v1, 0x12e

    const/16 v2, 0x45

    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->sendMessage(II)V

    .line 1097
    return-void
.end method
