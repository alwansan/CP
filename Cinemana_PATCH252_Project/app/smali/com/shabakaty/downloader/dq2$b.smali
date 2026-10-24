.class public Lcom/shabakaty/downloader/dq2$b;
.super Ljava/lang/Object;
.source "MediaRouteDynamicChooserDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/dq2;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/dq2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/dq2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/dq2$b;->r:Lcom/shabakaty/downloader/dq2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/dq2$b;->r:Lcom/shabakaty/downloader/dq2;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/fa;->dismiss()V

    return-void
.end method
