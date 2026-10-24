.class public final Lcom/shabakaty/downloader/fs0$a;
.super Lcom/shabakaty/downloader/af2;
.source "DeserializedPackageFragmentImpl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/fs0;-><init>(Lcom/shabakaty/downloader/fi1;Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/nu2;Lcom/shabakaty/downloader/ui3;Lcom/shabakaty/downloader/gm;Lcom/shabakaty/downloader/as0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/v20;",
        "Lcom/shabakaty/downloader/s94;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/fs0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/fs0;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/fs0$a;->r:Lcom/shabakaty/downloader/fs0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/v20;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/fs0$a;->r:Lcom/shabakaty/downloader/fs0;

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/fs0;->z:Lcom/shabakaty/downloader/as0;

    if-nez p1, :cond_0

    .line 5
    sget-object p1, Lcom/shabakaty/downloader/s94;->a:Lcom/shabakaty/downloader/s94;

    :cond_0
    return-object p1
.end method
