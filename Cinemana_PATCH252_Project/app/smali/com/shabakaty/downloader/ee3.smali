.class public Lcom/shabakaty/downloader/ee3;
.super Ljava/lang/Object;
.source "PopupMenu.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/fe3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/fe3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/ee3;->r:Lcom/shabakaty/downloader/fe3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ee3;->r:Lcom/shabakaty/downloader/fe3;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
