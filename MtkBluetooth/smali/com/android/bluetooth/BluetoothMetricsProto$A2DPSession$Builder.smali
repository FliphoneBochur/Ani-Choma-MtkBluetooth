.class public final Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "BluetoothMetricsProto.java"

# interfaces
.implements Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSessionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;",
        "Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;",
        ">;",
        "Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSessionOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 6491
    invoke-static {}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->access$10100()Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 6492
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/BluetoothMetricsProto$1;)V
    .locals 0

    .line 6484
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAudioDurationMillis()Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;
    .locals 1

    .line 6866
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;->copyOnWrite()V

    .line 6867
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    invoke-static {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->access$11700(Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;)V

    .line 6868
    return-object p0
.end method

.method public clearBufferOverrunsMaxCount()Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;
    .locals 1

    .line 6678
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;->copyOnWrite()V

    .line 6679
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    invoke-static {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->access$10900(Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;)V

    .line 6680
    return-object p0
.end method

.method public clearBufferOverrunsTotal()Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;
    .locals 1

    .line 6725
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;->copyOnWrite()V

    .line 6726
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    invoke-static {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->access$11100(Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;)V

    .line 6727
    return-object p0
.end method

.method public clearBufferUnderrunsAverage()Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;
    .locals 1

    .line 6772
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;->copyOnWrite()V

    .line 6773
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    invoke-static {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->access$11300(Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;)V

    .line 6774
    return-object p0
.end method

.method public clearBufferUnderrunsCount()Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;
    .locals 1

    .line 6819
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;->copyOnWrite()V

    .line 6820
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    invoke-static {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->access$11500(Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;)V

    .line 6821
    return-object p0
.end method

.method public clearIsA2DpOffload()Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;
    .locals 1

    .line 6960
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;->copyOnWrite()V

    .line 6961
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    invoke-static {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->access$12100(Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;)V

    .line 6962
    return-object p0
.end method

.method public clearMediaTimerAvgMillis()Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;
    .locals 1

    .line 6631
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;->copyOnWrite()V

    .line 6632
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    invoke-static {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->access$10700(Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;)V

    .line 6633
    return-object p0
.end method

.method public clearMediaTimerMaxMillis()Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;
    .locals 1

    .line 6584
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;->copyOnWrite()V

    .line 6585
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    invoke-static {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->access$10500(Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;)V

    .line 6586
    return-object p0
.end method

.method public clearMediaTimerMinMillis()Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;
    .locals 1

    .line 6537
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;->copyOnWrite()V

    .line 6538
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    invoke-static {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->access$10300(Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;)V

    .line 6539
    return-object p0
.end method

.method public clearSourceCodec()Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;
    .locals 1

    .line 6913
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;->copyOnWrite()V

    .line 6914
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    invoke-static {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->access$11900(Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;)V

    .line 6915
    return-object p0
.end method

.method public getAudioDurationMillis()J
    .locals 2

    .line 6844
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->getAudioDurationMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getBufferOverrunsMaxCount()I
    .locals 1

    .line 6656
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->getBufferOverrunsMaxCount()I

    move-result v0

    return v0
.end method

.method public getBufferOverrunsTotal()I
    .locals 1

    .line 6703
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->getBufferOverrunsTotal()I

    move-result v0

    return v0
.end method

.method public getBufferUnderrunsAverage()F
    .locals 1

    .line 6750
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->getBufferUnderrunsAverage()F

    move-result v0

    return v0
.end method

.method public getBufferUnderrunsCount()I
    .locals 1

    .line 6797
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->getBufferUnderrunsCount()I

    move-result v0

    return v0
.end method

.method public getIsA2DpOffload()Z
    .locals 1

    .line 6938
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->getIsA2DpOffload()Z

    move-result v0

    return v0
.end method

.method public getMediaTimerAvgMillis()I
    .locals 1

    .line 6609
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->getMediaTimerAvgMillis()I

    move-result v0

    return v0
.end method

.method public getMediaTimerMaxMillis()I
    .locals 1

    .line 6562
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->getMediaTimerMaxMillis()I

    move-result v0

    return v0
.end method

.method public getMediaTimerMinMillis()I
    .locals 1

    .line 6515
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->getMediaTimerMinMillis()I

    move-result v0

    return v0
.end method

.method public getSourceCodec()Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;
    .locals 1

    .line 6891
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->getSourceCodec()Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;

    move-result-object v0

    return-object v0
.end method

.method public hasAudioDurationMillis()Z
    .locals 1

    .line 6833
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->hasAudioDurationMillis()Z

    move-result v0

    return v0
.end method

.method public hasBufferOverrunsMaxCount()Z
    .locals 1

    .line 6645
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->hasBufferOverrunsMaxCount()Z

    move-result v0

    return v0
.end method

.method public hasBufferOverrunsTotal()Z
    .locals 1

    .line 6692
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->hasBufferOverrunsTotal()Z

    move-result v0

    return v0
.end method

.method public hasBufferUnderrunsAverage()Z
    .locals 1

    .line 6739
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->hasBufferUnderrunsAverage()Z

    move-result v0

    return v0
.end method

.method public hasBufferUnderrunsCount()Z
    .locals 1

    .line 6786
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->hasBufferUnderrunsCount()Z

    move-result v0

    return v0
.end method

.method public hasIsA2DpOffload()Z
    .locals 1

    .line 6927
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->hasIsA2DpOffload()Z

    move-result v0

    return v0
.end method

.method public hasMediaTimerAvgMillis()Z
    .locals 1

    .line 6598
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->hasMediaTimerAvgMillis()Z

    move-result v0

    return v0
.end method

.method public hasMediaTimerMaxMillis()Z
    .locals 1

    .line 6551
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->hasMediaTimerMaxMillis()Z

    move-result v0

    return v0
.end method

.method public hasMediaTimerMinMillis()Z
    .locals 1

    .line 6504
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->hasMediaTimerMinMillis()Z

    move-result v0

    return v0
.end method

.method public hasSourceCodec()Z
    .locals 1

    .line 6880
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->hasSourceCodec()Z

    move-result v0

    return v0
.end method

.method public setAudioDurationMillis(J)Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;
    .locals 1

    .line 6854
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;->copyOnWrite()V

    .line 6855
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    invoke-static {v0, p1, p2}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->access$11600(Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;J)V

    .line 6856
    return-object p0
.end method

.method public setBufferOverrunsMaxCount(I)Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;
    .locals 1

    .line 6666
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;->copyOnWrite()V

    .line 6667
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    invoke-static {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->access$10800(Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;I)V

    .line 6668
    return-object p0
.end method

.method public setBufferOverrunsTotal(I)Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;
    .locals 1

    .line 6713
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;->copyOnWrite()V

    .line 6714
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    invoke-static {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->access$11000(Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;I)V

    .line 6715
    return-object p0
.end method

.method public setBufferUnderrunsAverage(F)Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;
    .locals 1

    .line 6760
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;->copyOnWrite()V

    .line 6761
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    invoke-static {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->access$11200(Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;F)V

    .line 6762
    return-object p0
.end method

.method public setBufferUnderrunsCount(I)Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;
    .locals 1

    .line 6807
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;->copyOnWrite()V

    .line 6808
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    invoke-static {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->access$11400(Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;I)V

    .line 6809
    return-object p0
.end method

.method public setIsA2DpOffload(Z)Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;
    .locals 1

    .line 6948
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;->copyOnWrite()V

    .line 6949
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    invoke-static {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->access$12000(Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;Z)V

    .line 6950
    return-object p0
.end method

.method public setMediaTimerAvgMillis(I)Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;
    .locals 1

    .line 6619
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;->copyOnWrite()V

    .line 6620
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    invoke-static {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->access$10600(Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;I)V

    .line 6621
    return-object p0
.end method

.method public setMediaTimerMaxMillis(I)Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;
    .locals 1

    .line 6572
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;->copyOnWrite()V

    .line 6573
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    invoke-static {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->access$10400(Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;I)V

    .line 6574
    return-object p0
.end method

.method public setMediaTimerMinMillis(I)Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;
    .locals 1

    .line 6525
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;->copyOnWrite()V

    .line 6526
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    invoke-static {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->access$10200(Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;I)V

    .line 6527
    return-object p0
.end method

.method public setSourceCodec(Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;)Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;
    .locals 1

    .line 6901
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;->copyOnWrite()V

    .line 6902
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    invoke-static {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->access$11800(Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;)V

    .line 6903
    return-object p0
.end method
