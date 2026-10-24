.class public final Lcom/shabakaty/downloader/c61;
.super Ljava/lang/Object;
.source "EventStream.java"


# instance fields
.field public final a:[Lcom/shabakaty/downloader/u51;

.field public final b:[J

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J[J[Lcom/shabakaty/downloader/u51;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/c61;->c:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/c61;->d:Ljava/lang/String;

    .line 4
    iput-object p5, p0, Lcom/shabakaty/downloader/c61;->b:[J

    .line 5
    iput-object p6, p0, Lcom/shabakaty/downloader/c61;->a:[Lcom/shabakaty/downloader/u51;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/c61;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/shabakaty/downloader/c61;->d:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/dl3;->a(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/dl3;->a(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "/"

    invoke-static {v2, v0, v3, v1}, Lcom/shabakaty/downloader/bc0;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
