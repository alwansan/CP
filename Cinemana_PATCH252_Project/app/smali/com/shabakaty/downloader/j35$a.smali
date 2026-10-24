.class public final Lcom/shabakaty/downloader/j35$a;
.super Ljava/lang/Object;
.source "ViewGroup.kt"

# interfaces
.implements Lcom/shabakaty/downloader/l04;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/j35;->a(Landroid/view/ViewGroup;)Lcom/shabakaty/downloader/l04;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/l04<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/j35$a;->a:Landroid/view/ViewGroup;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/j35$a;->a:Landroid/view/ViewGroup;

    const-string v1, "<this>"

    .line 2
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/k35;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/k35;-><init>(Landroid/view/ViewGroup;)V

    return-object v1
.end method
