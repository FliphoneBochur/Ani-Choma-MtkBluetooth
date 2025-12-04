.class Lcom/android/bluetooth/gatt/HandleMap;
.super Ljava/lang/Object;
.source "HandleMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/gatt/HandleMap$Entry;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "BtGatt.HandleMap"

.field public static final TYPE_CHARACTERISTIC:I = 0x2

.field public static final TYPE_DESCRIPTOR:I = 0x3

.field public static final TYPE_SERVICE:I = 0x1

.field public static final TYPE_UNDEFINED:I


# instance fields
.field mEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/bluetooth/gatt/HandleMap$Entry;",
            ">;"
        }
    .end annotation
.end field

.field mLastCharacteristic:I

.field mRequestMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    sget-boolean v0, Lcom/android/bluetooth/gatt/GattServiceConfig;->DBG:Z

    sput-boolean v0, Lcom/android/bluetooth/gatt/HandleMap;->DBG:Z

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/gatt/HandleMap;->mEntries:Ljava/util/List;

    .line 87
    iput-object v0, p0, Lcom/android/bluetooth/gatt/HandleMap;->mRequestMap:Ljava/util/Map;

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/gatt/HandleMap;->mLastCharacteristic:I

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/HandleMap;->mEntries:Ljava/util/List;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/HandleMap;->mRequestMap:Ljava/util/Map;

    .line 93
    return-void
.end method


# virtual methods
.method addCharacteristic(IILjava/util/UUID;I)V
    .locals 9

    .line 106
    iput p2, p0, Lcom/android/bluetooth/gatt/HandleMap;->mLastCharacteristic:I

    .line 107
    iget-object v0, p0, Lcom/android/bluetooth/gatt/HandleMap;->mEntries:Ljava/util/List;

    new-instance v8, Lcom/android/bluetooth/gatt/HandleMap$Entry;

    const/4 v4, 0x2

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move v5, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/bluetooth/gatt/HandleMap$Entry;-><init>(Lcom/android/bluetooth/gatt/HandleMap;IIILjava/util/UUID;I)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    return-void
.end method

.method addDescriptor(IILjava/util/UUID;I)V
    .locals 10

    .line 111
    iget-object v0, p0, Lcom/android/bluetooth/gatt/HandleMap;->mEntries:Ljava/util/List;

    new-instance v9, Lcom/android/bluetooth/gatt/HandleMap$Entry;

    iget v8, p0, Lcom/android/bluetooth/gatt/HandleMap;->mLastCharacteristic:I

    const/4 v4, 0x3

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    move v5, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/bluetooth/gatt/HandleMap$Entry;-><init>(Lcom/android/bluetooth/gatt/HandleMap;IIILjava/util/UUID;II)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    return-void
.end method

.method addRequest(II)V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/android/bluetooth/gatt/HandleMap;->mRequestMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    return-void
.end method

.method addService(IILjava/util/UUID;IIZ)V
    .locals 10

    .line 102
    move-object v1, p0

    iget-object v8, v1, Lcom/android/bluetooth/gatt/HandleMap;->mEntries:Ljava/util/List;

    new-instance v9, Lcom/android/bluetooth/gatt/HandleMap$Entry;

    move-object v0, v9

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/bluetooth/gatt/HandleMap$Entry;-><init>(Lcom/android/bluetooth/gatt/HandleMap;IILjava/util/UUID;IIZ)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    return-void
.end method

.method checkServiceExists(Ljava/util/UUID;I)Z
    .locals 4

    .line 138
    iget-object v0, p0, Lcom/android/bluetooth/gatt/HandleMap;->mEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/gatt/HandleMap$Entry;

    .line 139
    iget v2, v1, Lcom/android/bluetooth/gatt/HandleMap$Entry;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget v2, v1, Lcom/android/bluetooth/gatt/HandleMap$Entry;->handle:I

    if-ne v2, p2, :cond_0

    iget-object v1, v1, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    invoke-virtual {v1, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    return v3

    .line 142
    :cond_0
    goto :goto_0

    .line 143
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method clear()V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/android/bluetooth/gatt/HandleMap;->mEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 97
    iget-object v0, p0, Lcom/android/bluetooth/gatt/HandleMap;->mRequestMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 98
    return-void
.end method

.method deleteRequest(I)V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/android/bluetooth/gatt/HandleMap;->mRequestMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    return-void
.end method

.method deleteService(II)V
    .locals 3

    .line 147
    iget-object v0, p0, Lcom/android/bluetooth/gatt/HandleMap;->mEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 148
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/gatt/HandleMap$Entry;

    .line 149
    iget v2, v1, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serverIf:I

    if-eq v2, p1, :cond_0

    .line 150
    goto :goto_0

    .line 153
    :cond_0
    iget v2, v1, Lcom/android/bluetooth/gatt/HandleMap$Entry;->handle:I

    if-eq v2, p2, :cond_1

    iget v1, v1, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceHandle:I

    if-ne v1, p2, :cond_2

    .line 154
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 156
    :cond_2
    goto :goto_0

    .line 157
    :cond_3
    return-void
.end method

.method dump(Ljava/lang/StringBuilder;)V
    .locals 5

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Entries: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/gatt/HandleMap;->mEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Requests: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/gatt/HandleMap;->mRequestMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    iget-object v0, p0, Lcom/android/bluetooth/gatt/HandleMap;->mEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/gatt/HandleMap$Entry;

    .line 189
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serverIf:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/bluetooth/gatt/HandleMap$Entry;->handle:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    iget v3, v2, Lcom/android/bluetooth/gatt/HandleMap$Entry;->type:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 201
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    Descriptor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 197
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Characteristic "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    goto :goto_1

    .line 192
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", started "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v2, Lcom/android/bluetooth/gatt/HandleMap$Entry;->started:Z

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    nop

    .line 205
    :goto_1
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    goto/16 :goto_0

    .line 207
    :cond_3
    return-void
.end method

.method getByHandle(I)Lcom/android/bluetooth/gatt/HandleMap$Entry;
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/android/bluetooth/gatt/HandleMap;->mEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/gatt/HandleMap$Entry;

    .line 129
    iget v2, v1, Lcom/android/bluetooth/gatt/HandleMap$Entry;->handle:I

    if-ne v2, p1, :cond_0

    .line 130
    return-object v1

    .line 132
    :cond_0
    goto :goto_0

    .line 133
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getByHandle() - Handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not found!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BtGatt.HandleMap"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/4 p1, 0x0

    return-object p1
.end method

.method getByRequestId(I)Lcom/android/bluetooth/gatt/HandleMap$Entry;
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/android/bluetooth/gatt/HandleMap;->mRequestMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 173
    if-nez v0, :cond_0

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getByRequestId() - Request ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not found!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BtGatt.HandleMap"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const/4 p1, 0x0

    return-object p1

    .line 177
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/gatt/HandleMap;->getByHandle(I)Lcom/android/bluetooth/gatt/HandleMap$Entry;

    move-result-object p1

    return-object p1
.end method

.method getEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/bluetooth/gatt/HandleMap$Entry;",
            ">;"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/android/bluetooth/gatt/HandleMap;->mEntries:Ljava/util/List;

    return-object v0
.end method

.method setStarted(IIZ)V
    .locals 4

    .line 116
    iget-object v0, p0, Lcom/android/bluetooth/gatt/HandleMap;->mEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/gatt/HandleMap$Entry;

    .line 117
    iget v2, v1, Lcom/android/bluetooth/gatt/HandleMap$Entry;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget v2, v1, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serverIf:I

    if-ne v2, p1, :cond_0

    iget v2, v1, Lcom/android/bluetooth/gatt/HandleMap$Entry;->handle:I

    if-eq v2, p2, :cond_1

    .line 119
    goto :goto_0

    .line 122
    :cond_1
    iput-boolean p3, v1, Lcom/android/bluetooth/gatt/HandleMap$Entry;->started:Z

    .line 123
    return-void

    .line 125
    :cond_2
    return-void
.end method
