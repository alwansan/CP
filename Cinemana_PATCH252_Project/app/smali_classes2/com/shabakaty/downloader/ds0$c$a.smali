.class public final Lcom/shabakaty/downloader/ds0$c$a;
.super Lcom/shabakaty/downloader/af2;
.source "DeserializedMemberScope.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ds0$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "TM;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/na3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/na3<",
            "TM;>;"
        }
    .end annotation
.end field

.field public final synthetic s:Ljava/io/ByteArrayInputStream;

.field public final synthetic t:Lcom/shabakaty/downloader/ds0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/na3;Ljava/io/ByteArrayInputStream;Lcom/shabakaty/downloader/ds0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/na3<",
            "TM;>;",
            "Ljava/io/ByteArrayInputStream;",
            "Lcom/shabakaty/downloader/ds0;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/ds0$c$a;->r:Lcom/shabakaty/downloader/na3;

    iput-object p2, p0, Lcom/shabakaty/downloader/ds0$c$a;->s:Ljava/io/ByteArrayInputStream;

    iput-object p3, p0, Lcom/shabakaty/downloader/ds0$c$a;->t:Lcom/shabakaty/downloader/ds0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ds0$c$a;->r:Lcom/shabakaty/downloader/na3;

    iget-object v1, p0, Lcom/shabakaty/downloader/ds0$c$a;->s:Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/shabakaty/downloader/ds0$c$a;->t:Lcom/shabakaty/downloader/ds0;

    .line 2
    iget-object v2, v2, Lcom/shabakaty/downloader/ds0;->b:Lcom/shabakaty/downloader/rr0;

    .line 3
    iget-object v2, v2, Lcom/shabakaty/downloader/rr0;->a:Lcom/shabakaty/downloader/or0;

    .line 4
    iget-object v2, v2, Lcom/shabakaty/downloader/or0;->p:Lcom/shabakaty/downloader/t81;

    .line 5
    check-cast v0, Lcom/shabakaty/downloader/q0;

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/q0;->c(Ljava/io/InputStream;Lcom/shabakaty/downloader/t81;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/es2;

    return-object v0
.end method
