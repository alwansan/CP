.class public final Lcom/shabakaty/downloader/xr0$c$a;
.super Lcom/shabakaty/downloader/af2;
.source "DeserializedClassDescriptor.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/xr0$c;-><init>(Lcom/shabakaty/downloader/xr0;)V
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
        "Lcom/shabakaty/downloader/q20;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/xr0$c;

.field public final synthetic s:Lcom/shabakaty/downloader/xr0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/xr0$c;Lcom/shabakaty/downloader/xr0;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/xr0$c$a;->r:Lcom/shabakaty/downloader/xr0$c;

    iput-object p2, p0, Lcom/shabakaty/downloader/xr0$c$a;->s:Lcom/shabakaty/downloader/xr0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    move-object v2, p1

    check-cast v2, Lcom/shabakaty/downloader/hw2;

    const-string p1, "name"

    .line 2
    invoke-static {v2, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/xr0$c$a;->r:Lcom/shabakaty/downloader/xr0$c;

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/xr0$c;->a:Ljava/util/Map;

    .line 5
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/oi3;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/xr0$c$a;->s:Lcom/shabakaty/downloader/xr0;

    iget-object v0, p0, Lcom/shabakaty/downloader/xr0$c$a;->r:Lcom/shabakaty/downloader/xr0$c;

    .line 6
    iget-object v3, v1, Lcom/shabakaty/downloader/xr0;->C:Lcom/shabakaty/downloader/rr0;

    .line 7
    iget-object v3, v3, Lcom/shabakaty/downloader/rr0;->a:Lcom/shabakaty/downloader/or0;

    .line 8
    iget-object v3, v3, Lcom/shabakaty/downloader/or0;->a:Lcom/shabakaty/downloader/md4;

    .line 9
    iget-object v4, v0, Lcom/shabakaty/downloader/xr0$c;->c:Lcom/shabakaty/downloader/d03;

    .line 10
    new-instance v5, Lcom/shabakaty/downloader/sr0;

    .line 11
    iget-object v0, v1, Lcom/shabakaty/downloader/xr0;->C:Lcom/shabakaty/downloader/rr0;

    .line 12
    iget-object v0, v0, Lcom/shabakaty/downloader/rr0;->a:Lcom/shabakaty/downloader/or0;

    .line 13
    iget-object v0, v0, Lcom/shabakaty/downloader/or0;->a:Lcom/shabakaty/downloader/md4;

    .line 14
    new-instance v6, Lcom/shabakaty/downloader/yr0;

    invoke-direct {v6, v1, p1}, Lcom/shabakaty/downloader/yr0;-><init>(Lcom/shabakaty/downloader/xr0;Lcom/shabakaty/downloader/oi3;)V

    .line 15
    invoke-direct {v5, v0, v6}, Lcom/shabakaty/downloader/sr0;-><init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/rm1;)V

    .line 16
    sget-object p1, Lcom/shabakaty/downloader/s94;->a:Lcom/shabakaty/downloader/s94;

    move-object v0, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, p1

    .line 17
    invoke-static/range {v0 .. v5}, Lcom/shabakaty/downloader/y31;->T0(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/q20;Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/d03;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/s94;)Lcom/shabakaty/downloader/y31;

    move-result-object p1

    :goto_0
    return-object p1
.end method
