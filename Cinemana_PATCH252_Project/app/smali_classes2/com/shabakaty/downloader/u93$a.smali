.class public final Lcom/shabakaty/downloader/u93$a;
.super Ljava/lang/Object;
.source "PackageViewDescriptorFactory.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/u93;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:Lcom/shabakaty/downloader/u93$a;

.field public static final b:Lcom/shabakaty/downloader/j61;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/j61<",
            "Lcom/shabakaty/downloader/u93;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/shabakaty/downloader/u93$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/u93$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/u93$a;->a:Lcom/shabakaty/downloader/u93$a;

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/j61;

    const-string v1, "PackageViewDescriptorFactory"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/j61;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shabakaty/downloader/u93$a;->b:Lcom/shabakaty/downloader/j61;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
