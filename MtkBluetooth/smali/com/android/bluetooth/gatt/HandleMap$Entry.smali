.class Lcom/android/bluetooth/gatt/HandleMap$Entry;
.super Ljava/lang/Object;
.source "HandleMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/gatt/HandleMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Entry"
.end annotation


# instance fields
.field public advertisePreferred:Z

.field public charHandle:I

.field public handle:I

.field public instance:I

.field public serverIf:I

.field public serviceHandle:I

.field public serviceType:I

.field public started:Z

.field final synthetic this$0:Lcom/android/bluetooth/gatt/HandleMap;

.field public type:I

.field public uuid:Ljava/util/UUID;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/gatt/HandleMap;IIILjava/util/UUID;I)V
    .locals 1

    .line 68
    iput-object p1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->this$0:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serverIf:I

    .line 38
    iput p1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->type:I

    .line 39
    iput p1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->handle:I

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    .line 41
    iput p1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    .line 42
    iput p1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceType:I

    .line 43
    iput p1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceHandle:I

    .line 44
    iput p1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->charHandle:I

    .line 45
    iput-boolean p1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->started:Z

    .line 46
    iput-boolean p1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->advertisePreferred:Z

    .line 69
    iput p2, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serverIf:I

    .line 70
    iput p3, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->type:I

    .line 71
    iput p4, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->handle:I

    .line 72
    iput-object p5, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    .line 73
    iput p6, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceHandle:I

    .line 74
    return-void
.end method

.method constructor <init>(Lcom/android/bluetooth/gatt/HandleMap;IIILjava/util/UUID;II)V
    .locals 1

    .line 76
    iput-object p1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->this$0:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serverIf:I

    .line 38
    iput p1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->type:I

    .line 39
    iput p1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->handle:I

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    .line 41
    iput p1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    .line 42
    iput p1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceType:I

    .line 43
    iput p1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceHandle:I

    .line 44
    iput p1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->charHandle:I

    .line 45
    iput-boolean p1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->started:Z

    .line 46
    iput-boolean p1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->advertisePreferred:Z

    .line 77
    iput p2, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serverIf:I

    .line 78
    iput p3, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->type:I

    .line 79
    iput p4, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->handle:I

    .line 80
    iput-object p5, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    .line 81
    iput p6, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceHandle:I

    .line 82
    iput p7, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->charHandle:I

    .line 83
    return-void
.end method

.method constructor <init>(Lcom/android/bluetooth/gatt/HandleMap;IILjava/util/UUID;II)V
    .locals 1

    .line 48
    iput-object p1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->this$0:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serverIf:I

    .line 38
    iput p1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->type:I

    .line 39
    iput p1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->handle:I

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    .line 41
    iput p1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    .line 42
    iput p1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceType:I

    .line 43
    iput p1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceHandle:I

    .line 44
    iput p1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->charHandle:I

    .line 45
    iput-boolean p1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->started:Z

    .line 46
    iput-boolean p1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->advertisePreferred:Z

    .line 49
    iput p2, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serverIf:I

    .line 50
    const/4 p1, 0x1

    iput p1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->type:I

    .line 51
    iput p3, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->handle:I

    .line 52
    iput-object p4, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    .line 53
    iput p6, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    .line 54
    iput p5, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceType:I

    .line 55
    return-void
.end method

.method constructor <init>(Lcom/android/bluetooth/gatt/HandleMap;IILjava/util/UUID;IIZ)V
    .locals 1

    .line 58
    iput-object p1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->this$0:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serverIf:I

    .line 38
    iput p1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->type:I

    .line 39
    iput p1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->handle:I

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    .line 41
    iput p1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    .line 42
    iput p1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceType:I

    .line 43
    iput p1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceHandle:I

    .line 44
    iput p1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->charHandle:I

    .line 45
    iput-boolean p1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->started:Z

    .line 46
    iput-boolean p1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->advertisePreferred:Z

    .line 59
    iput p2, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serverIf:I

    .line 60
    const/4 p1, 0x1

    iput p1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->type:I

    .line 61
    iput p3, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->handle:I

    .line 62
    iput-object p4, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    .line 63
    iput p6, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    .line 64
    iput p5, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceType:I

    .line 65
    iput-boolean p7, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->advertisePreferred:Z

    .line 66
    return-void
.end method
