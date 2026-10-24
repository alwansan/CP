.class public Lcom/shabakaty/downloader/nm3$a;
.super Ljava/lang/Object;
.source "RadialViewGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/nm3;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/nm3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/nm3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/nm3$a;->r:Lcom/shabakaty/downloader/nm3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/nm3$a;->r:Lcom/shabakaty/downloader/nm3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/nm3;->t()V

    return-void
.end method
