.class public final Lcom/shabakaty/downloader/p53$a$a;
.super Ljava/lang/Object;
.source "ObservableUnsubscribeOn.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/p53$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/p53$a;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/p53$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/p53$a$a;->r:Lcom/shabakaty/downloader/p53$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/p53$a$a;->r:Lcom/shabakaty/downloader/p53$a;

    iget-object v0, v0, Lcom/shabakaty/downloader/p53$a;->t:Lcom/shabakaty/downloader/mu0;

    invoke-interface {v0}, Lcom/shabakaty/downloader/mu0;->h()V

    return-void
.end method
