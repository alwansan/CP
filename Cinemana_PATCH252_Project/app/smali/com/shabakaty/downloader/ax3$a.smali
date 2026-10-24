.class public final Lcom/shabakaty/downloader/ax3$a;
.super Ljava/lang/Object;
.source "SampleDataQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ax3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:J

.field public final b:J

.field public c:Z

.field public d:Lcom/shabakaty/downloader/i5;

.field public e:Lcom/shabakaty/downloader/ax3$a;


# direct methods
.method public constructor <init>(JI)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/shabakaty/downloader/ax3$a;->a:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    .line 3
    iput-wide p1, p0, Lcom/shabakaty/downloader/ax3$a;->b:J

    return-void
.end method


# virtual methods
.method public a(J)I
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shabakaty/downloader/ax3$a;->a:J

    sub-long/2addr p1, v0

    long-to-int p2, p1

    iget-object p1, p0, Lcom/shabakaty/downloader/ax3$a;->d:Lcom/shabakaty/downloader/i5;

    iget p1, p1, Lcom/shabakaty/downloader/i5;->b:I

    add-int/2addr p2, p1

    return p2
.end method
