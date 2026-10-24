.class public Lcom/shabakaty/downloader/vz3$b;
.super Ljava/lang/Object;
.source "SeekMap.java"

# interfaces
.implements Lcom/shabakaty/downloader/vz3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/vz3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:J

.field public final b:Lcom/shabakaty/downloader/vz3$a;


# direct methods
.method public constructor <init>(JJ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/shabakaty/downloader/vz3$b;->a:J

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/vz3$a;

    const-wide/16 v0, 0x0

    cmp-long p2, p3, v0

    if-nez p2, :cond_0

    .line 4
    sget-object p2, Lcom/shabakaty/downloader/xz3;->c:Lcom/shabakaty/downloader/xz3;

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/shabakaty/downloader/xz3;

    invoke-direct {p2, v0, v1, p3, p4}, Lcom/shabakaty/downloader/xz3;-><init>(JJ)V

    :goto_0
    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/vz3$a;-><init>(Lcom/shabakaty/downloader/xz3;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/vz3$b;->b:Lcom/shabakaty/downloader/vz3$a;

    return-void
.end method


# virtual methods
.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public i(J)Lcom/shabakaty/downloader/vz3$a;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/vz3$b;->b:Lcom/shabakaty/downloader/vz3$a;

    return-object p1
.end method

.method public j()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shabakaty/downloader/vz3$b;->a:J

    return-wide v0
.end method
