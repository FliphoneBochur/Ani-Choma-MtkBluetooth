.class public final synthetic Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$VoiceRecognitionTimeoutEvent$EV67KkqTR78Q6tNuwx9Q2WKkskk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/bluetooth/hfp/HeadsetService$StateMachineTask;


# instance fields
.field public final synthetic f$0:Lcom/android/bluetooth/hfp/HeadsetService$VoiceRecognitionTimeoutEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/bluetooth/hfp/HeadsetService$VoiceRecognitionTimeoutEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$VoiceRecognitionTimeoutEvent$EV67KkqTR78Q6tNuwx9Q2WKkskk;->f$0:Lcom/android/bluetooth/hfp/HeadsetService$VoiceRecognitionTimeoutEvent;

    return-void
.end method


# virtual methods
.method public final execute(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$VoiceRecognitionTimeoutEvent$EV67KkqTR78Q6tNuwx9Q2WKkskk;->f$0:Lcom/android/bluetooth/hfp/HeadsetService$VoiceRecognitionTimeoutEvent;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService$VoiceRecognitionTimeoutEvent;->lambda$run$0$HeadsetService$VoiceRecognitionTimeoutEvent(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V

    return-void
.end method
