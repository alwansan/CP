.class public final Lcom/shabakaty/downloader/fx4$b;
.super Ljava/lang/Object;
.source "UseCaseAttachState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/fx4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/u14;

.field public b:Z

.field public c:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/u14;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/shabakaty/downloader/fx4$b;->b:Z

    .line 3
    iput-boolean v0, p0, Lcom/shabakaty/downloader/fx4$b;->c:Z

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/fx4$b;->a:Lcom/shabakaty/downloader/u14;

    return-void
.end method
