.class public Lcom/shabakaty/downloader/fx3$b;
.super Lcom/shabakaty/downloader/xv2;
.source "SavedStateHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/fx3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/xv2<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/shabakaty/downloader/fx3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/fx3;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/shabakaty/downloader/xv2;-><init>()V

    .line 5
    iput-object p2, p0, Lcom/shabakaty/downloader/fx3$b;->a:Ljava/lang/String;

    .line 6
    iput-object p1, p0, Lcom/shabakaty/downloader/fx3$b;->b:Lcom/shabakaty/downloader/fx3;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/fx3;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/fx3;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Lcom/shabakaty/downloader/xv2;-><init>(Ljava/lang/Object;)V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/fx3$b;->a:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/fx3$b;->b:Lcom/shabakaty/downloader/fx3;

    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fx3$b;->b:Lcom/shabakaty/downloader/fx3;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/fx3;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/shabakaty/downloader/fx3$b;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/xv2;->setValue(Ljava/lang/Object;)V

    return-void
.end method
