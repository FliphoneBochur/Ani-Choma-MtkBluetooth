.class final Lcom/google/protobuf/IntArrayList;
.super Lcom/google/protobuf/AbstractProtobufList;
.source "IntArrayList.java"

# interfaces
.implements Lcom/google/protobuf/Internal$IntList;
.implements Ljava/util/RandomAccess;
.implements Lcom/google/protobuf/PrimitiveNonBoxingCollection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/AbstractProtobufList<",
        "Ljava/lang/Integer;",
        ">;",
        "Lcom/google/protobuf/Internal$IntList;",
        "Ljava/util/RandomAccess;",
        "Lcom/google/protobuf/PrimitiveNonBoxingCollection;"
    }
.end annotation


# static fields
.field private static final EMPTY_LIST:Lcom/google/protobuf/IntArrayList;


# instance fields
.field private array:[I

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 48
    new-instance v0, Lcom/google/protobuf/IntArrayList;

    const/4 v1, 0x0

    new-array v2, v1, [I

    invoke-direct {v0, v2, v1}, Lcom/google/protobuf/IntArrayList;-><init>([II)V

    sput-object v0, Lcom/google/protobuf/IntArrayList;->EMPTY_LIST:Lcom/google/protobuf/IntArrayList;

    .line 51
    invoke-virtual {v0}, Lcom/google/protobuf/IntArrayList;->makeImmutable()V

    .line 52
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 69
    const/16 v0, 0xa

    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/protobuf/IntArrayList;-><init>([II)V

    .line 70
    return-void
.end method

.method private constructor <init>([II)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/google/protobuf/AbstractProtobufList;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/google/protobuf/IntArrayList;->array:[I

    .line 77
    iput p2, p0, Lcom/google/protobuf/IntArrayList;->size:I

    .line 78
    return-void
.end method

.method private addInt(II)V
    .locals 4

    .line 175
    invoke-virtual {p0}, Lcom/google/protobuf/IntArrayList;->ensureIsMutable()V

    .line 176
    if-ltz p1, :cond_1

    iget v0, p0, Lcom/google/protobuf/IntArrayList;->size:I

    if-gt p1, v0, :cond_1

    .line 180
    iget-object v1, p0, Lcom/google/protobuf/IntArrayList;->array:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 182
    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    invoke-static {v1, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 185
    :cond_0
    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 186
    new-array v0, v0, [I

    .line 189
    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 192
    iget-object v1, p0, Lcom/google/protobuf/IntArrayList;->array:[I

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/google/protobuf/IntArrayList;->size:I

    sub-int/2addr v3, p1

    invoke-static {v1, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    iput-object v0, p0, Lcom/google/protobuf/IntArrayList;->array:[I

    .line 196
    :goto_0
    iget-object v0, p0, Lcom/google/protobuf/IntArrayList;->array:[I

    aput p2, v0, p1

    .line 197
    iget p1, p0, Lcom/google/protobuf/IntArrayList;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/protobuf/IntArrayList;->size:I

    .line 198
    iget p1, p0, Lcom/google/protobuf/IntArrayList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/protobuf/IntArrayList;->modCount:I

    .line 199
    return-void

    .line 177
    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/google/protobuf/IntArrayList;->makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static emptyList()Lcom/google/protobuf/IntArrayList;
    .locals 1

    .line 55
    sget-object v0, Lcom/google/protobuf/IntArrayList;->EMPTY_LIST:Lcom/google/protobuf/IntArrayList;

    return-object v0
.end method

.method private ensureIndexInRange(I)V
    .locals 1

    .line 268
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/google/protobuf/IntArrayList;->size:I

    if-ge p1, v0, :cond_0

    .line 271
    return-void

    .line 269
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/google/protobuf/IntArrayList;->makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;
    .locals 2

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Size:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/google/protobuf/IntArrayList;->size:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public add(ILjava/lang/Integer;)V
    .locals 0

    .line 164
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/IntArrayList;->addInt(II)V

    .line 165
    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    .line 45
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/IntArrayList;->add(ILjava/lang/Integer;)V

    return-void
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 203
    invoke-virtual {p0}, Lcom/google/protobuf/IntArrayList;->ensureIsMutable()V

    .line 205
    invoke-static {p1}, Lcom/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    instance-of v0, p1, Lcom/google/protobuf/IntArrayList;

    if-nez v0, :cond_0

    .line 209
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractProtobufList;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    .line 212
    :cond_0
    check-cast p1, Lcom/google/protobuf/IntArrayList;

    .line 213
    iget v0, p1, Lcom/google/protobuf/IntArrayList;->size:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 214
    return v1

    .line 217
    :cond_1
    const v2, 0x7fffffff

    iget v3, p0, Lcom/google/protobuf/IntArrayList;->size:I

    sub-int/2addr v2, v3

    .line 218
    if-lt v2, v0, :cond_3

    .line 223
    add-int/2addr v3, v0

    .line 224
    iget-object v0, p0, Lcom/google/protobuf/IntArrayList;->array:[I

    array-length v2, v0

    if-le v3, v2, :cond_2

    .line 225
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/IntArrayList;->array:[I

    .line 228
    :cond_2
    iget-object v0, p1, Lcom/google/protobuf/IntArrayList;->array:[I

    iget-object v2, p0, Lcom/google/protobuf/IntArrayList;->array:[I

    iget v4, p0, Lcom/google/protobuf/IntArrayList;->size:I

    iget p1, p1, Lcom/google/protobuf/IntArrayList;->size:I

    invoke-static {v0, v1, v2, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    iput v3, p0, Lcom/google/protobuf/IntArrayList;->size:I

    .line 230
    iget p1, p0, Lcom/google/protobuf/IntArrayList;->modCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/protobuf/IntArrayList;->modCount:I

    .line 231
    return v0

    .line 220
    :cond_3
    new-instance p1, Ljava/lang/OutOfMemoryError;

    invoke-direct {p1}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p1
.end method

.method public addInt(I)V
    .locals 1

    .line 170
    iget v0, p0, Lcom/google/protobuf/IntArrayList;->size:I

    invoke-direct {p0, v0, p1}, Lcom/google/protobuf/IntArrayList;->addInt(II)V

    .line 171
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 94
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 95
    return v0

    .line 97
    :cond_0
    instance-of v1, p1, Lcom/google/protobuf/IntArrayList;

    if-nez v1, :cond_1

    .line 98
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractProtobufList;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 100
    :cond_1
    check-cast p1, Lcom/google/protobuf/IntArrayList;

    .line 101
    iget v1, p0, Lcom/google/protobuf/IntArrayList;->size:I

    iget v2, p1, Lcom/google/protobuf/IntArrayList;->size:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    .line 102
    return v3

    .line 105
    :cond_2
    iget-object p1, p1, Lcom/google/protobuf/IntArrayList;->array:[I

    .line 106
    move v1, v3

    :goto_0
    iget v2, p0, Lcom/google/protobuf/IntArrayList;->size:I

    if-ge v1, v2, :cond_4

    .line 107
    iget-object v2, p0, Lcom/google/protobuf/IntArrayList;->array:[I

    aget v2, v2, v1

    aget v4, p1, v1

    if-eq v2, v4, :cond_3

    .line 108
    return v3

    .line 106
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    :cond_4
    return v0
.end method

.method public get(I)Ljava/lang/Integer;
    .locals 0

    .line 134
    invoke-virtual {p0, p1}, Lcom/google/protobuf/IntArrayList;->getInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/google/protobuf/IntArrayList;->get(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getInt(I)I
    .locals 1

    .line 139
    invoke-direct {p0, p1}, Lcom/google/protobuf/IntArrayList;->ensureIndexInRange(I)V

    .line 140
    iget-object v0, p0, Lcom/google/protobuf/IntArrayList;->array:[I

    aget p1, v0, p1

    return p1
.end method

.method public hashCode()I
    .locals 3

    .line 117
    nop

    .line 118
    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/google/protobuf/IntArrayList;->size:I

    if-ge v1, v2, :cond_0

    .line 119
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/protobuf/IntArrayList;->array:[I

    aget v2, v2, v1

    add-int/2addr v0, v2

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    :cond_0
    return v0
.end method

.method public mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$IntList;
    .locals 2

    .line 126
    iget v0, p0, Lcom/google/protobuf/IntArrayList;->size:I

    if-lt p1, v0, :cond_0

    .line 129
    new-instance v0, Lcom/google/protobuf/IntArrayList;

    iget-object v1, p0, Lcom/google/protobuf/IntArrayList;->array:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iget v1, p0, Lcom/google/protobuf/IntArrayList;->size:I

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/IntArrayList;-><init>([II)V

    return-object v0

    .line 127
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public bridge synthetic mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$ProtobufList;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/google/protobuf/IntArrayList;->mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$IntList;

    move-result-object p1

    return-object p1
.end method

.method public remove(I)Ljava/lang/Integer;
    .locals 4

    .line 250
    invoke-virtual {p0}, Lcom/google/protobuf/IntArrayList;->ensureIsMutable()V

    .line 251
    invoke-direct {p0, p1}, Lcom/google/protobuf/IntArrayList;->ensureIndexInRange(I)V

    .line 252
    iget-object v0, p0, Lcom/google/protobuf/IntArrayList;->array:[I

    aget v1, v0, p1

    .line 253
    iget v2, p0, Lcom/google/protobuf/IntArrayList;->size:I

    add-int/lit8 v3, v2, -0x1

    if-ge p1, v3, :cond_0

    .line 254
    add-int/lit8 v3, p1, 0x1

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v3, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 256
    :cond_0
    iget p1, p0, Lcom/google/protobuf/IntArrayList;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/protobuf/IntArrayList;->size:I

    .line 257
    iget p1, p0, Lcom/google/protobuf/IntArrayList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/protobuf/IntArrayList;->modCount:I

    .line 258
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/google/protobuf/IntArrayList;->remove(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4

    .line 236
    invoke-virtual {p0}, Lcom/google/protobuf/IntArrayList;->ensureIsMutable()V

    .line 237
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/google/protobuf/IntArrayList;->size:I

    if-ge v1, v2, :cond_1

    .line 238
    iget-object v2, p0, Lcom/google/protobuf/IntArrayList;->array:[I

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 239
    iget-object p1, p0, Lcom/google/protobuf/IntArrayList;->array:[I

    add-int/lit8 v0, v1, 0x1

    iget v2, p0, Lcom/google/protobuf/IntArrayList;->size:I

    sub-int/2addr v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {p1, v0, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 240
    iget p1, p0, Lcom/google/protobuf/IntArrayList;->size:I

    sub-int/2addr p1, v3

    iput p1, p0, Lcom/google/protobuf/IntArrayList;->size:I

    .line 241
    iget p1, p0, Lcom/google/protobuf/IntArrayList;->modCount:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/google/protobuf/IntArrayList;->modCount:I

    .line 242
    return v3

    .line 237
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 245
    :cond_1
    return v0
.end method

.method protected removeRange(II)V
    .locals 2

    .line 82
    invoke-virtual {p0}, Lcom/google/protobuf/IntArrayList;->ensureIsMutable()V

    .line 83
    if-lt p2, p1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/google/protobuf/IntArrayList;->array:[I

    iget v1, p0, Lcom/google/protobuf/IntArrayList;->size:I

    sub-int/2addr v1, p2

    invoke-static {v0, p2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    iget v0, p0, Lcom/google/protobuf/IntArrayList;->size:I

    sub-int/2addr p2, p1

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/google/protobuf/IntArrayList;->size:I

    .line 89
    iget p1, p0, Lcom/google/protobuf/IntArrayList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/protobuf/IntArrayList;->modCount:I

    .line 90
    return-void

    .line 84
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "toIndex < fromIndex"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public set(ILjava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 150
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/IntArrayList;->setInt(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 45
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/IntArrayList;->set(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public setInt(II)I
    .locals 2

    .line 155
    invoke-virtual {p0}, Lcom/google/protobuf/IntArrayList;->ensureIsMutable()V

    .line 156
    invoke-direct {p0, p1}, Lcom/google/protobuf/IntArrayList;->ensureIndexInRange(I)V

    .line 157
    iget-object v0, p0, Lcom/google/protobuf/IntArrayList;->array:[I

    aget v1, v0, p1

    .line 158
    aput p2, v0, p1

    .line 159
    return v1
.end method

.method public size()I
    .locals 1

    .line 145
    iget v0, p0, Lcom/google/protobuf/IntArrayList;->size:I

    return v0
.end method
