.class final Lcom/google/protobuf/UnsafeUtil$JvmMemoryAccessor;
.super Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;
.source "UnsafeUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/UnsafeUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "JvmMemoryAccessor"
.end annotation


# direct methods
.method constructor <init>(Lsun/misc/Unsafe;)V
    .locals 0

    .line 570
    invoke-direct {p0, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;-><init>(Lsun/misc/Unsafe;)V

    .line 571
    return-void
.end method


# virtual methods
.method public copyMemory(J[BJJ)V
    .locals 9

    .line 645
    move-object v0, p0

    iget-object v0, v0, Lcom/google/protobuf/UnsafeUtil$JvmMemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/google/protobuf/UnsafeUtil;->BYTE_ARRAY_BASE_OFFSET:J

    add-long v5, v1, p4

    const/4 v1, 0x0

    move-wide v2, p1

    move-object v4, p3

    move-wide v7, p6

    invoke-virtual/range {v0 .. v8}, Lsun/misc/Unsafe;->copyMemory([BJ[BJJ)V

    .line 646
    return-void
.end method

.method public copyMemory([BJJJ)V
    .locals 9

    .line 650
    move-object v0, p0

    iget-object v0, v0, Lcom/google/protobuf/UnsafeUtil$JvmMemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/google/protobuf/UnsafeUtil;->BYTE_ARRAY_BASE_OFFSET:J

    add-long v2, v1, p2

    const/4 v4, 0x0

    move-object v1, p1

    move-wide v5, p4

    move-wide v7, p6

    invoke-virtual/range {v0 .. v8}, Lsun/misc/Unsafe;->copyMemory([BJ[BJJ)V

    .line 651
    return-void
.end method

.method public getBoolean(Ljava/lang/Object;J)Z
    .locals 1

    .line 615
    iget-object v0, p0, Lcom/google/protobuf/UnsafeUtil$JvmMemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getBoolean(Ljava/lang/Object;J)Z

    move-result p1

    return p1
.end method

.method public getByte(J)B
    .locals 1

    .line 575
    iget-object v0, p0, Lcom/google/protobuf/UnsafeUtil$JvmMemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2}, Lsun/misc/Unsafe;->getByte(J)B

    move-result p1

    return p1
.end method

.method public getByte(Ljava/lang/Object;J)B
    .locals 1

    .line 605
    iget-object v0, p0, Lcom/google/protobuf/UnsafeUtil$JvmMemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result p1

    return p1
.end method

.method public getDouble(Ljava/lang/Object;J)D
    .locals 1

    .line 635
    iget-object v0, p0, Lcom/google/protobuf/UnsafeUtil$JvmMemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getDouble(Ljava/lang/Object;J)D

    move-result-wide p1

    return-wide p1
.end method

.method public getFloat(Ljava/lang/Object;J)F
    .locals 1

    .line 625
    iget-object v0, p0, Lcom/google/protobuf/UnsafeUtil$JvmMemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getFloat(Ljava/lang/Object;J)F

    move-result p1

    return p1
.end method

.method public getInt(J)I
    .locals 1

    .line 585
    iget-object v0, p0, Lcom/google/protobuf/UnsafeUtil$JvmMemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2}, Lsun/misc/Unsafe;->getInt(J)I

    move-result p1

    return p1
.end method

.method public getLong(J)J
    .locals 1

    .line 595
    iget-object v0, p0, Lcom/google/protobuf/UnsafeUtil$JvmMemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2}, Lsun/misc/Unsafe;->getLong(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getStaticObject(Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 3

    .line 655
    iget-object v0, p0, Lcom/google/protobuf/UnsafeUtil$JvmMemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1}, Lsun/misc/Unsafe;->staticFieldBase(Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/UnsafeUtil$JvmMemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v1, p1}, Lsun/misc/Unsafe;->staticFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil$JvmMemoryAccessor;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public putBoolean(Ljava/lang/Object;JZ)V
    .locals 1

    .line 620
    iget-object v0, p0, Lcom/google/protobuf/UnsafeUtil$JvmMemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putBoolean(Ljava/lang/Object;JZ)V

    .line 621
    return-void
.end method

.method public putByte(JB)V
    .locals 1

    .line 580
    iget-object v0, p0, Lcom/google/protobuf/UnsafeUtil$JvmMemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->putByte(JB)V

    .line 581
    return-void
.end method

.method public putByte(Ljava/lang/Object;JB)V
    .locals 1

    .line 610
    iget-object v0, p0, Lcom/google/protobuf/UnsafeUtil$JvmMemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    .line 611
    return-void
.end method

.method public putDouble(Ljava/lang/Object;JD)V
    .locals 6

    .line 640
    iget-object v0, p0, Lcom/google/protobuf/UnsafeUtil$JvmMemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putDouble(Ljava/lang/Object;JD)V

    .line 641
    return-void
.end method

.method public putFloat(Ljava/lang/Object;JF)V
    .locals 1

    .line 630
    iget-object v0, p0, Lcom/google/protobuf/UnsafeUtil$JvmMemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putFloat(Ljava/lang/Object;JF)V

    .line 631
    return-void
.end method

.method public putInt(JI)V
    .locals 1

    .line 590
    iget-object v0, p0, Lcom/google/protobuf/UnsafeUtil$JvmMemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->putInt(JI)V

    .line 591
    return-void
.end method

.method public putLong(JJ)V
    .locals 1

    .line 600
    iget-object v0, p0, Lcom/google/protobuf/UnsafeUtil$JvmMemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putLong(JJ)V

    .line 601
    return-void
.end method
