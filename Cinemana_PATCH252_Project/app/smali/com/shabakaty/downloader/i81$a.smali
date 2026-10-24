.class public final Lcom/shabakaty/downloader/i81$a;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"

# interfaces
.implements Lcom/shabakaty/downloader/br3$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/i81;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/i81;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/i81;Lcom/shabakaty/downloader/st5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/i81$a;->a:Lcom/shabakaty/downloader/i81;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 0

    return-void
.end method

.method public final onMetadataUpdated()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/i81$a;->a:Lcom/shabakaty/downloader/i81;

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/i81;->h0()V

    return-void
.end method

.method public final onStatusUpdated()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/i81$a;->a:Lcom/shabakaty/downloader/i81;

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/i81;->r()Lcom/shabakaty/downloader/br3;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->h()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/i81$a;->a:Lcom/shabakaty/downloader/i81;

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, v0, Lcom/shabakaty/downloader/i81;->b0:Z

    .line 6
    invoke-virtual {v0}, Lcom/shabakaty/downloader/i81;->k0()V

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/i81$a;->a:Lcom/shabakaty/downloader/i81;

    .line 8
    invoke-virtual {v0}, Lcom/shabakaty/downloader/i81;->m0()V

    return-void

    .line 9
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/i81$a;->a:Lcom/shabakaty/downloader/i81;

    .line 10
    iget-boolean v1, v0, Lcom/shabakaty/downloader/i81;->b0:Z

    if-nez v1, :cond_2

    .line 11
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_2
    return-void
.end method

.method public final p()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/i81$a;->a:Lcom/shabakaty/downloader/i81;

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/i81;->m0()V

    return-void
.end method

.method public final q()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/i81$a;->a:Lcom/shabakaty/downloader/i81;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/i81;->L:Landroid/widget/TextView;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/r9;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f12005d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
