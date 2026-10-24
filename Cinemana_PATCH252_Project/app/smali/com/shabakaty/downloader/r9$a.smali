.class public Lcom/shabakaty/downloader/r9$a;
.super Ljava/lang/Object;
.source "AppCompatActivity.java"

# interfaces
.implements Landroidx/savedstate/a$b;


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
    iput-object p1, p0, Lcom/shabakaty/downloader/r9$a;->a:Lcom/shabakaty/downloader/r9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/r9$a;->a:Lcom/shabakaty/downloader/r9;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/r9;->getDelegate()Lcom/shabakaty/downloader/z9;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/z9;->r(Landroid/os/Bundle;)V

    return-object v0
.end method
