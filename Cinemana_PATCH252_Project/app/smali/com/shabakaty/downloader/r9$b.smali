.class public Lcom/shabakaty/downloader/r9$b;
.super Ljava/lang/Object;
.source "AppCompatActivity.java"

# interfaces
.implements Lcom/shabakaty/downloader/m63;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/r9;->initDelegate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/r9;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/r9;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/r9$b;->a:Lcom/shabakaty/downloader/r9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/r9$b;->a:Lcom/shabakaty/downloader/r9;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/r9;->getDelegate()Lcom/shabakaty/downloader/z9;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/z9;->k()V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/r9$b;->a:Lcom/shabakaty/downloader/r9;

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getSavedStateRegistry()Landroidx/savedstate/a;

    move-result-object v0

    const-string v1, "androidx:appcompat"

    .line 4
    invoke-virtual {v0, v1}, Landroidx/savedstate/a;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/z9;->n(Landroid/os/Bundle;)V

    return-void
.end method
