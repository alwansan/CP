.class public final Lcom/shabakaty/downloader/qv1$b;
.super Ljava/lang/Object;
.source "Http2Connection.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/qv1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/net/Socket;

.field public b:Ljava/lang/String;

.field public c:Lcom/shabakaty/downloader/eo;

.field public d:Lcom/shabakaty/downloader/do;

.field public e:Lcom/shabakaty/downloader/qv1$c;

.field public f:Lcom/shabakaty/downloader/zj3;

.field public g:I

.field public h:Z

.field public final i:Lcom/shabakaty/downloader/il4;


# direct methods
.method public constructor <init>(ZLcom/shabakaty/downloader/il4;)V
    .locals 1

    const-string v0, "taskRunner"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/shabakaty/downloader/qv1$b;->h:Z

    iput-object p2, p0, Lcom/shabakaty/downloader/qv1$b;->i:Lcom/shabakaty/downloader/il4;

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/qv1$c;->a:Lcom/shabakaty/downloader/qv1$c;

    iput-object p1, p0, Lcom/shabakaty/downloader/qv1$b;->e:Lcom/shabakaty/downloader/qv1$c;

    .line 3
    sget-object p1, Lcom/shabakaty/downloader/zj3;->a:Lcom/shabakaty/downloader/zj3;

    iput-object p1, p0, Lcom/shabakaty/downloader/qv1$b;->f:Lcom/shabakaty/downloader/zj3;

    return-void
.end method
