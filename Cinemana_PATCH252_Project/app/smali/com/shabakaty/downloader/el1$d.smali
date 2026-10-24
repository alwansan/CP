.class public Lcom/shabakaty/downloader/el1$d;
.super Ljava/lang/Object;
.source "FragmentTransitionSupport.java"

# interfaces
.implements Lcom/shabakaty/downloader/iv$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/el1;->u(Landroidx/fragment/app/Fragment;Ljava/lang/Object;Lcom/shabakaty/downloader/iv;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/dq4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/el1;Lcom/shabakaty/downloader/dq4;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/shabakaty/downloader/el1$d;->a:Lcom/shabakaty/downloader/dq4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/el1$d;->a:Lcom/shabakaty/downloader/dq4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/dq4;->cancel()V

    return-void
.end method
