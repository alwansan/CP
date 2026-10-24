.class public final Lcom/shabakaty/downloader/zn4$h;
.super Lcom/shabakaty/downloader/zn4$i;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/zn4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/zn4$i;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/he;

    invoke-direct {v0}, Lcom/shabakaty/downloader/he;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/zn4$i;->j:Lcom/shabakaty/downloader/he;

    .line 3
    sget-object v0, Lcom/shabakaty/downloader/zn4$j;->s:Lcom/shabakaty/downloader/zn4$j;

    iput-object v0, p0, Lcom/shabakaty/downloader/zn4;->a:Lcom/shabakaty/downloader/zn4$j;

    return-void
.end method


# virtual methods
.method public bridge synthetic g()Lcom/shabakaty/downloader/zn4;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/zn4$h;->s()Lcom/shabakaty/downloader/zn4$i;

    return-object p0
.end method

.method public s()Lcom/shabakaty/downloader/zn4$i;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/shabakaty/downloader/zn4$i;->s()Lcom/shabakaty/downloader/zn4$i;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/he;

    invoke-direct {v0}, Lcom/shabakaty/downloader/he;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/zn4$i;->j:Lcom/shabakaty/downloader/he;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zn4$i;->j:Lcom/shabakaty/downloader/he;

    const-string v1, ">"

    const-string v2, "<"

    if-eqz v0, :cond_0

    .line 2
    iget v0, v0, Lcom/shabakaty/downloader/he;->r:I

    if-lez v0, :cond_0

    .line 3
    invoke-static {v2}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/shabakaty/downloader/zn4$i;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shabakaty/downloader/zn4$i;->j:Lcom/shabakaty/downloader/he;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/he;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    invoke-static {v2}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/shabakaty/downloader/zn4$i;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
