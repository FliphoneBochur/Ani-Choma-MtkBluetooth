.class public Lcom/android/bluetooth/util/Interop;
.super Ljava/lang/Object;
.source "Interop.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/util/Interop$Entry;
    }
.end annotation


# static fields
.field public static final INTEROP_MAP_ASCIIONLY:I = 0x1

.field private static sEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/bluetooth/util/Interop$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcom/android/bluetooth/util/Interop;->sEntries:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static lazyInitInteropDatabase()V
    .locals 4

    .line 62
    sget-object v0, Lcom/android/bluetooth/util/Interop;->sEntries:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 63
    return-void

    .line 65
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/bluetooth/util/Interop;->sEntries:Ljava/util/List;

    .line 68
    new-instance v1, Lcom/android/bluetooth/util/Interop$Entry;

    const/4 v2, 0x1

    const-string v3, "00:26:e8"

    invoke-direct {v1, v2, v3}, Lcom/android/bluetooth/util/Interop$Entry;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    return-void
.end method

.method public static matchByAddress(ILjava/lang/String;)Z
    .locals 4

    .line 77
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 81
    :cond_0
    invoke-static {}, Lcom/android/bluetooth/util/Interop;->lazyInitInteropDatabase()V

    .line 82
    sget-object v1, Lcom/android/bluetooth/util/Interop;->sEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/util/Interop$Entry;

    .line 83
    iget v3, v2, Lcom/android/bluetooth/util/Interop$Entry;->workaround_id:I

    if-ne v3, p0, :cond_1

    iget-object v2, v2, Lcom/android/bluetooth/util/Interop$Entry;->address:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 83
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    const/4 p0, 0x1

    return p0

    .line 87
    :cond_1
    goto :goto_0

    .line 89
    :cond_2
    return v0

    .line 78
    :cond_3
    :goto_1
    return v0
.end method
