.class Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;
.super Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;
.source "HeadsetStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hfp/HeadsetStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Connected"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V
    .locals 1

    .line 1199
    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;-><init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/bluetooth/hfp/HeadsetStateMachine$1;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .line 1207
    invoke-super {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->enter()V

    .line 1208
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$900(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 1210
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$5000()Lcom/android/bluetooth/hfp/HeadsetAgIndicatorEnableState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/bluetooth/hfp/HeadsetAgIndicatorEnableState;)V

    .line 1212
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$4700(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Z)V

    .line 1214
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1215
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const-wide/16 v3, 0x50

    invoke-virtual {v1, v0, v3, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 1220
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$5100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)V

    .line 1222
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->broadcastStateTransitions()V

    .line 1225
    new-instance v0, Lcom/android/bluetooth/btservice/ServiceFactory;

    invoke-direct {v0}, Lcom/android/bluetooth/btservice/ServiceFactory;-><init>()V

    .line 1227
    const/4 v1, 0x0

    .line 1228
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/ServiceFactory;->getHearingAidService()Lcom/android/bluetooth/hearingaid/HearingAidService;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1229
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/ServiceFactory;->getHearingAidService()Lcom/android/bluetooth/hearingaid/HearingAidService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/hearingaid/HearingAidService;->getActiveDevices()Ljava/util/List;

    move-result-object v0

    .line 1230
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 1231
    if-eqz v3, :cond_1

    .line 1232
    move v1, v2

    .line 1234
    :cond_1
    goto :goto_0

    .line 1236
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetService;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_3

    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 1237
    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->getConnectionStateInt()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    .line 1238
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/hfp/HeadsetService;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    .line 1241
    :cond_3
    return-void
.end method

.method public exit()V
    .locals 2

    .line 1372
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/16 v1, 0x69

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$5400(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)V

    .line 1373
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$5500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)V

    .line 1374
    invoke-super {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->exit()V

    .line 1375
    return-void
.end method

.method getAudioStateInt()I
    .locals 1

    .line 1202
    const/16 v0, 0xa

    return v0
.end method

.method public processAudioEvent(I)V
    .locals 2

    .line 1318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processAudioEvent, state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->stateLogD(Ljava/lang/String;)V

    .line 1319
    const/16 v0, 0xa

    if-eqz p1, :cond_7

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 1364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processAudioEvent: bad state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->stateLogE(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1362
    :cond_0
    goto/16 :goto_0

    .line 1321
    :cond_1
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object p1

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/bluetooth/hfp/HeadsetService;->isScoAcceptable(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 1322
    const-string p1, "processAudioEvent: reject incoming audio connection"

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->stateLogW(Ljava/lang/String;)V

    .line 1323
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    move-result-object p1

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->disconnectAudio(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1324
    const-string p1, "processAudioEvent: failed to disconnect audio"

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->stateLogE(Ljava/lang/String;)V

    .line 1327
    :cond_2
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->broadcastAudioState(Landroid/bluetooth/BluetoothDevice;II)V

    .line 1329
    goto/16 :goto_0

    .line 1331
    :cond_3
    const-string p1, "processAudioEvent: audio connected"

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->stateLogI(Ljava/lang/String;)V

    .line 1332
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 1333
    goto/16 :goto_0

    .line 1335
    :cond_4
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object p1

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/bluetooth/hfp/HeadsetService;->isScoAcceptable(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 1336
    const-string p1, "processAudioEvent: reject incoming pending audio connection"

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->stateLogW(Ljava/lang/String;)V

    .line 1337
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    move-result-object p1

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->disconnectAudio(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 1338
    const-string p1, "processAudioEvent: failed to disconnect pending audio"

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->stateLogE(Ljava/lang/String;)V

    .line 1341
    :cond_5
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->broadcastAudioState(Landroid/bluetooth/BluetoothDevice;II)V

    .line 1343
    goto :goto_0

    .line 1345
    :cond_6
    const-string p1, "processAudioEvent: audio connecting"

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->stateLogI(Ljava/lang/String;)V

    .line 1346
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioConnecting;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 1347
    goto :goto_0

    .line 1349
    :cond_7
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/bluetooth/hfp/HeadsetService;->isVirtualCallStarted()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1350
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/bluetooth/hfp/HeadsetService;->stopScoUsingVirtualVoiceCall()Z

    .line 1352
    :cond_8
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    monitor-enter p1

    .line 1353
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;

    move-result-object v1

    if-eq v1, p0, :cond_9

    .line 1354
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1, p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$102(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;

    .line 1356
    :cond_9
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1357
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->broadcastAudioState(Landroid/bluetooth/BluetoothDevice;II)V

    .line 1359
    nop

    .line 1367
    :goto_0
    return-void

    .line 1356
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4

    .line 1246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processMessage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->stateLogD(Ljava/lang/String;)V

    .line 1248
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    const/4 v2, 0x2

    if-eq v0, v2, :cond_7

    const/4 v2, 0x3

    const/16 v3, 0x69

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    if-eq v0, v3, :cond_0

    .line 1311
    invoke-super {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->processMessage(Landroid/os/Message;)Z

    move-result p1

    return p1

    .line 1307
    :cond_0
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$3500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->queryPhoneState()V

    .line 1308
    goto/16 :goto_1

    .line 1302
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ignore DISCONNECT_AUDIO, device="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->stateLogD(Ljava/lang/String;)V

    .line 1304
    goto/16 :goto_1

    .line 1273
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/16 v2, 0x10

    invoke-static {v0, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$5200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 1274
    invoke-static {v0, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$5300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_0

    .line 1281
    :cond_3
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object p1

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hfp/HeadsetService;->isScoAcceptable(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 1282
    goto/16 :goto_1

    .line 1284
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CONNECT_AUDIO, device="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->stateLogD(Ljava/lang/String;)V

    .line 1285
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$3500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->getAudioManager()Landroid/media/AudioManager;

    move-result-object p1

    const-string v0, "A2dpSuspended=true"

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1286
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    move-result-object p1

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->connectAudio(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 1287
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$3500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->getAudioManager()Landroid/media/AudioManager;

    move-result-object p1

    const-string v0, "A2dpSuspended=false"

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1288
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to connect SCO audio for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->stateLogE(Ljava/lang/String;)V

    .line 1290
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    const/16 v0, 0xa

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->broadcastAudioState(Landroid/bluetooth/BluetoothDevice;II)V

    .line 1292
    goto/16 :goto_1

    .line 1295
    :cond_5
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    monitor-enter v0

    .line 1296
    :try_start_0
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioConnecting;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$102(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;

    .line 1297
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1298
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioConnecting;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 1300
    goto/16 :goto_1

    .line 1297
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 1275
    :cond_6
    :goto_0
    const-string v0, "Delay connect audio"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->stateLogD(Ljava/lang/String;)V

    .line 1276
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget p1, p1, Landroid/os/Message;->what:I

    const-wide/16 v2, 0x14

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessageDelayed(IJ)V

    .line 1278
    goto/16 :goto_1

    .line 1255
    :cond_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 1256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DISCONNECT from device="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->stateLogD(Ljava/lang/String;)V

    .line 1257
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DISCONNECT, device "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not connected"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->stateLogW(Ljava/lang/String;)V

    .line 1259
    goto :goto_1

    .line 1261
    :cond_8
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->disconnectHfp(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DISCONNECT from "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " failed"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->stateLogE(Ljava/lang/String;)V

    .line 1264
    invoke-virtual {p0, p1, v2, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V

    .line 1266
    goto :goto_1

    .line 1268
    :cond_9
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnecting;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 1270
    goto :goto_1

    .line 1250
    :cond_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 1251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CONNECT, ignored, device="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", currentDevice"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;->stateLogW(Ljava/lang/String;)V

    .line 1252
    nop

    .line 1313
    :goto_1
    return v1
.end method
