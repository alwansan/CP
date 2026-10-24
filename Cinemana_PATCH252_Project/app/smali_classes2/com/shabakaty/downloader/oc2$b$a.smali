.class public final Lcom/shabakaty/downloader/oc2$b$a;
.super Lcom/shabakaty/downloader/af2;
.source "KDeclarationContainerImpl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/oc2$b;-><init>(Lcom/shabakaty/downloader/oc2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/mv3;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/oc2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/oc2;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/oc2$b$a;->r:Lcom/shabakaty/downloader/oc2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/oc2$b$a;->r:Lcom/shabakaty/downloader/oc2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/k20;->b()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/ju2;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/mv3;

    move-result-object v0

    return-object v0
.end method
