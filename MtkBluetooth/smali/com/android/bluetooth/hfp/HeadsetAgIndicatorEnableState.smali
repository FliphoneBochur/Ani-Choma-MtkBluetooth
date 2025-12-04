.class public Lcom/android/bluetooth/hfp/HeadsetAgIndicatorEnableState;
.super Lcom/android/bluetooth/hfp/HeadsetMessageObject;
.source "HeadsetAgIndicatorEnableState.java"


# instance fields
.field public battery:Z

.field public roam:Z

.field public service:Z

.field public signal:Z


# direct methods
.method constructor <init>(ZZZZ)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetMessageObject;-><init>()V

    .line 29
    iput-boolean p1, p0, Lcom/android/bluetooth/hfp/HeadsetAgIndicatorEnableState;->service:Z

    .line 30
    iput-boolean p2, p0, Lcom/android/bluetooth/hfp/HeadsetAgIndicatorEnableState;->roam:Z

    .line 31
    iput-boolean p3, p0, Lcom/android/bluetooth/hfp/HeadsetAgIndicatorEnableState;->signal:Z

    .line 32
    iput-boolean p4, p0, Lcom/android/bluetooth/hfp/HeadsetAgIndicatorEnableState;->battery:Z

    .line 33
    return-void
.end method


# virtual methods
.method public buildString(Ljava/lang/StringBuilder;)V
    .locals 1

    .line 57
    if-nez p1, :cond_0

    .line 58
    return-void

    .line 60
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const-string v0, "[service="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/bluetooth/hfp/HeadsetAgIndicatorEnableState;->service:Z

    .line 62
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 63
    const-string v0, ", roam="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/bluetooth/hfp/HeadsetAgIndicatorEnableState;->roam:Z

    .line 64
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 65
    const-string v0, ", signal="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/bluetooth/hfp/HeadsetAgIndicatorEnableState;->signal:Z

    .line 66
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 67
    const-string v0, ", battery="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/bluetooth/hfp/HeadsetAgIndicatorEnableState;->battery:Z

    .line 68
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 69
    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 37
    instance-of v0, p1, Lcom/android/bluetooth/hfp/HeadsetAgIndicatorEnableState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 38
    return v1

    .line 40
    :cond_0
    check-cast p1, Lcom/android/bluetooth/hfp/HeadsetAgIndicatorEnableState;

    .line 41
    iget-boolean v0, p0, Lcom/android/bluetooth/hfp/HeadsetAgIndicatorEnableState;->service:Z

    iget-boolean v2, p1, Lcom/android/bluetooth/hfp/HeadsetAgIndicatorEnableState;->service:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/android/bluetooth/hfp/HeadsetAgIndicatorEnableState;->roam:Z

    iget-boolean v2, p1, Lcom/android/bluetooth/hfp/HeadsetAgIndicatorEnableState;->roam:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/android/bluetooth/hfp/HeadsetAgIndicatorEnableState;->signal:Z

    iget-boolean v2, p1, Lcom/android/bluetooth/hfp/HeadsetAgIndicatorEnableState;->signal:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/android/bluetooth/hfp/HeadsetAgIndicatorEnableState;->battery:Z

    iget-boolean p1, p1, Lcom/android/bluetooth/hfp/HeadsetAgIndicatorEnableState;->battery:Z

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 47
    nop

    .line 48
    iget-boolean v0, p0, Lcom/android/bluetooth/hfp/HeadsetAgIndicatorEnableState;->service:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 49
    :goto_0
    iget-boolean v1, p0, Lcom/android/bluetooth/hfp/HeadsetAgIndicatorEnableState;->roam:Z

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x2

    .line 50
    :cond_1
    iget-boolean v1, p0, Lcom/android/bluetooth/hfp/HeadsetAgIndicatorEnableState;->signal:Z

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x4

    .line 51
    :cond_2
    iget-boolean v1, p0, Lcom/android/bluetooth/hfp/HeadsetAgIndicatorEnableState;->battery:Z

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x8

    .line 52
    :cond_3
    return v0
.end method
