.class Lcom/shabakaty/cinemana/ca1/BatchDownload$Job;
.super Ljava/lang/Object;
.source "BatchDownload.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/cinemana/ca1/BatchDownload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Job"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Comparable<",
        "Lcom/shabakaty/cinemana/ca1/BatchDownload$Job;",
        ">;"
    }
.end annotation


# static fields
.field static final serial:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field final priority:I

.field final sequence:J

.field final work:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Job;->serial:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method constructor <init>(ILjava/lang/Runnable;)V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Job;->serial:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Job;->sequence:J

    iput p1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Job;->priority:I

    iput-object p2, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Job;->work:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/shabakaty/cinemana/ca1/BatchDownload$Job;)I
    .locals 4

    .line 31
    iget v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Job;->priority:I

    iget v1, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Job;->priority:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Job;->sequence:J

    iget-wide v2, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Job;->sequence:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    :goto_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 31
    check-cast p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Job;

    invoke-virtual {p0, p1}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Job;->compareTo(Lcom/shabakaty/cinemana/ca1/BatchDownload$Job;)I

    move-result p1

    return p1
.end method

.method public run()V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Job;->work:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
