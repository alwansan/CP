.class public final Lcom/shabakaty/downloader/xa2$b;
.super Ljava/lang/Object;
.source "JvmBuiltIns.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/xa2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/nu2;

.field public final b:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/nu2;Z)V
    .locals 1

    const-string v0, "ownerModuleDescriptor"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/xa2$b;->a:Lcom/shabakaty/downloader/nu2;

    .line 3
    iput-boolean p2, p0, Lcom/shabakaty/downloader/xa2$b;->b:Z

    return-void
.end method
