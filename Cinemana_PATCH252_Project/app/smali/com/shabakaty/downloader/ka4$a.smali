.class public final Lcom/shabakaty/downloader/ka4$a;
.super Lcom/shabakaty/downloader/af2;
.source "SplashViewModel.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/ka4;-><init>(Lcom/shabakaty/downloader/ff3;Lcom/shabakaty/downloader/ou1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/vr3;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/ka4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ka4;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/ka4$a;->r:Lcom/shabakaty/downloader/ka4;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/vr3$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/vr3$a;-><init>()V

    iget-object v1, p0, Lcom/shabakaty/downloader/ka4$a;->r:Lcom/shabakaty/downloader/ka4;

    .line 2
    iget-object v1, v1, Lcom/shabakaty/downloader/ka4;->h:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/vr3$a;->k(Ljava/lang/String;)Lcom/shabakaty/downloader/vr3$a;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/vr3$a;->b()Lcom/shabakaty/downloader/vr3;

    move-result-object v0

    return-object v0
.end method
