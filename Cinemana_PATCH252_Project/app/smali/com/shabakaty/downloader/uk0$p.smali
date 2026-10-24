.class public final Lcom/shabakaty/downloader/uk0$p;
.super Ljava/lang/Object;
.source "DaggerAppComponent.java"

# interfaces
.implements Lcom/shabakaty/downloader/e7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/uk0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "p"
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/uk0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/uk0;Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/uk0$p;->a:Lcom/shabakaty/downloader/uk0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/uk0$p;->a:Lcom/shabakaty/downloader/uk0;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/uk0;->J0:Lcom/shabakaty/downloader/oj3;

    .line 4
    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/n24;

    .line 5
    iput-object v0, p1, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->F:Lcom/shabakaty/downloader/n24;

    return-void
.end method
