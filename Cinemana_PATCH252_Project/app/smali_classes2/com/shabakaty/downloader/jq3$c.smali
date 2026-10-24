.class public final Lcom/shabakaty/downloader/jq3$c;
.super Lcom/shabakaty/downloader/af2;
.source "ReflectionTypes.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/jq3;-><init>(Lcom/shabakaty/downloader/nu2;Lcom/shabakaty/downloader/b03;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/mr2;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/nu2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/nu2;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/jq3$c;->r:Lcom/shabakaty/downloader/nu2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/jq3$c;->r:Lcom/shabakaty/downloader/nu2;

    sget-object v1, Lcom/shabakaty/downloader/tb4;->f:Lcom/shabakaty/downloader/fi1;

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/nu2;->t0(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/t93;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/t93;->s()Lcom/shabakaty/downloader/mr2;

    move-result-object v0

    return-object v0
.end method
