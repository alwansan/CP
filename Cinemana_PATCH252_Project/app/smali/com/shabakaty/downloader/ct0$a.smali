.class public Lcom/shabakaty/downloader/ct0$a;
.super Ljava/lang/Object;
.source "DialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ct0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/ct0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ct0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/ct0$a;->r:Lcom/shabakaty/downloader/ct0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ct0$a;->r:Lcom/shabakaty/downloader/ct0;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/ct0;->u:Landroid/content/DialogInterface$OnDismissListener;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/ct0;->C:Landroid/app/Dialog;

    .line 4
    invoke-interface {v1, v0}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method
