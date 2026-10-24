.class public final Lcom/shabakaty/downloader/d64$b$d;
.super Lcom/shabakaty/downloader/af2;
.source "signatureEnhancement.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/d64$b;->c(Lcom/shabakaty/downloader/zs4;Z)Lcom/shabakaty/downloader/d64$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Ljava/lang/Integer;",
        "Lcom/shabakaty/downloader/o82;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/zs4;

.field public final synthetic s:Lcom/shabakaty/downloader/tm1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/tm1<",
            "Ljava/lang/Integer;",
            "Lcom/shabakaty/downloader/o82;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/zs4;Lcom/shabakaty/downloader/tm1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/zs4;",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Ljava/lang/Integer;",
            "Lcom/shabakaty/downloader/o82;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/d64$b$d;->r:Lcom/shabakaty/downloader/zs4;

    iput-object p2, p0, Lcom/shabakaty/downloader/d64$b$d;->s:Lcom/shabakaty/downloader/tm1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/d64$b$d;->r:Lcom/shabakaty/downloader/zs4;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/zs4;->a:Ljava/util/Map;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/o82;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/d64$b$d;->s:Lcom/shabakaty/downloader/tm1;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/o82;

    :cond_0
    return-object v0
.end method
