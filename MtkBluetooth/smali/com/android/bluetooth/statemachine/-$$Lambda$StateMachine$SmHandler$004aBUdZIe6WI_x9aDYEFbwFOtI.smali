.class public final synthetic Lcom/android/bluetooth/statemachine/-$$Lambda$StateMachine$SmHandler$004aBUdZIe6WI_x9aDYEFbwFOtI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/statemachine/-$$Lambda$StateMachine$SmHandler$004aBUdZIe6WI_x9aDYEFbwFOtI;->f$0:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/statemachine/-$$Lambda$StateMachine$SmHandler$004aBUdZIe6WI_x9aDYEFbwFOtI;->f$0:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;

    check-cast p1, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;

    invoke-static {v0, p1}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->lambda$removeState$0(Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$StateInfo;)Z

    move-result p1

    return p1
.end method
