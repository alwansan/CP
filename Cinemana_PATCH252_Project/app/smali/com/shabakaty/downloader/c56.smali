.class public final Lcom/shabakaty/downloader/c56;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-common@@16.3.0"


# static fields
.field public static final synthetic a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/shabakaty/downloader/c56;

    .line 1
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    new-instance v0, Lcom/shabakaty/downloader/zl2;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/zl2;-><init>(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
