.class final Lcom/shabakaty/cinemana/ca1/Network120$Ordering;
.super Ljava/lang/Object;
.source "Network120.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/cinemana/ca1/Network120;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Ordering"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Runnable;",
        ">;"
    }
.end annotation


# instance fields
.field final ranks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Runnable;",
            "Lcom/shabakaty/cinemana/ca1/Network120$Rank;",
            ">;"
        }
    .end annotation
.end field

.field final seq:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/cinemana/ca1/Network120$Ordering;->ranks:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/cinemana/ca1/Network120$Ordering;->seq:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method admit(Ljava/lang/Runnable;)V
    .locals 4

    .line 16
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Network120$Ordering;->ranks:Ljava/util/Map;

    new-instance v1, Lcom/shabakaty/cinemana/ca1/Network120$Rank;

    iget-object v2, p0, Lcom/shabakaty/cinemana/ca1/Network120$Ordering;->seq:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v2

    invoke-direct {v1, p1, v2, v3}, Lcom/shabakaty/cinemana/ca1/Network120$Rank;-><init>(Ljava/lang/Runnable;J)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 14
    check-cast p1, Ljava/lang/Runnable;

    check-cast p2, Ljava/lang/Runnable;

    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/cinemana/ca1/Network120$Ordering;->compare(Ljava/lang/Runnable;Ljava/lang/Runnable;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/lang/Runnable;Ljava/lang/Runnable;)I
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Network120$Ordering;->ranks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/cinemana/ca1/Network120$Rank;

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Network120$Ordering;->ranks:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/cinemana/ca1/Network120$Rank;

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p1, Lcom/shabakaty/cinemana/ca1/Network120$Rank;->priority:I

    iget v1, p2, Lcom/shabakaty/cinemana/ca1/Network120$Rank;->priority:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v0, p1, Lcom/shabakaty/cinemana/ca1/Network120$Rank;->sequence:J

    iget-wide p1, p2, Lcom/shabakaty/cinemana/ca1/Network120$Rank;->sequence:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    :goto_0
    return v0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1
.end method
