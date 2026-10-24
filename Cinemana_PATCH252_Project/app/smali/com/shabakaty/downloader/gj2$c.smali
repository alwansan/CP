.class public final Lcom/shabakaty/downloader/gj2$c;
.super Ljava/lang/Object;
.source "LoadErrorHandlingPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/gj2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/io/IOException;

.field public final b:I


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/hj2;Lcom/shabakaty/downloader/fp2;Ljava/io/IOException;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Lcom/shabakaty/downloader/gj2$c;->a:Ljava/io/IOException;

    .line 3
    iput p4, p0, Lcom/shabakaty/downloader/gj2$c;->b:I

    return-void
.end method
