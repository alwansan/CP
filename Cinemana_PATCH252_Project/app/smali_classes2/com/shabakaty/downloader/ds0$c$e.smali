.class public final Lcom/shabakaty/downloader/ds0$c$e;
.super Lcom/shabakaty/downloader/af2;
.source "DeserializedMemberScope.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/ds0$c;-><init>(Lcom/shabakaty/downloader/ds0;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/hw2;",
        "Lcom/shabakaty/downloader/hs4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/ds0$c;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ds0$c;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/ds0$c$e;->r:Lcom/shabakaty/downloader/ds0$c;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/hw2;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/ds0$c$e;->r:Lcom/shabakaty/downloader/ds0$c;

    .line 4
    iget-object v1, v0, Lcom/shabakaty/downloader/ds0$c;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    const/4 v1, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object p1, v0, Lcom/shabakaty/downloader/ds0$c;->i:Lcom/shabakaty/downloader/ds0;

    .line 6
    iget-object p1, p1, Lcom/shabakaty/downloader/ds0;->b:Lcom/shabakaty/downloader/rr0;

    .line 7
    iget-object p1, p1, Lcom/shabakaty/downloader/rr0;->a:Lcom/shabakaty/downloader/or0;

    .line 8
    iget-object p1, p1, Lcom/shabakaty/downloader/or0;->p:Lcom/shabakaty/downloader/t81;

    .line 9
    sget-object v3, Lcom/shabakaty/downloader/zi3;->G:Lcom/shabakaty/downloader/na3;

    check-cast v3, Lcom/shabakaty/downloader/q0;

    invoke-virtual {v3, v2, p1}, Lcom/shabakaty/downloader/q0;->c(Ljava/io/InputStream;Lcom/shabakaty/downloader/t81;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/zi3;

    if-nez p1, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, v0, Lcom/shabakaty/downloader/ds0$c;->i:Lcom/shabakaty/downloader/ds0;

    .line 11
    iget-object v0, v0, Lcom/shabakaty/downloader/ds0;->b:Lcom/shabakaty/downloader/rr0;

    .line 12
    iget-object v0, v0, Lcom/shabakaty/downloader/rr0;->i:Lcom/shabakaty/downloader/jr2;

    .line 13
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/jr2;->h(Lcom/shabakaty/downloader/zi3;)Lcom/shabakaty/downloader/hs4;

    move-result-object v1

    :goto_0
    return-object v1
.end method
