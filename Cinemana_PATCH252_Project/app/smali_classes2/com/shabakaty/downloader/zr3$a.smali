.class public Lcom/shabakaty/downloader/zr3$a;
.super Lcom/shabakaty/downloader/yr3;
.source "RequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/zr3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final b:Lcom/shabakaty/downloader/yr3;

.field public final c:Lcom/shabakaty/downloader/fr2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/yr3;Lcom/shabakaty/downloader/fr2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/yr3;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/zr3$a;->b:Lcom/shabakaty/downloader/yr3;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/zr3$a;->c:Lcom/shabakaty/downloader/fr2;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zr3$a;->b:Lcom/shabakaty/downloader/yr3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/yr3;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public b()Lcom/shabakaty/downloader/fr2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zr3$a;->c:Lcom/shabakaty/downloader/fr2;

    return-object v0
.end method

.method public e(Lcom/shabakaty/downloader/do;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zr3$a;->b:Lcom/shabakaty/downloader/yr3;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/yr3;->e(Lcom/shabakaty/downloader/do;)V

    return-void
.end method
