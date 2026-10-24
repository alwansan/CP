.class public Lcom/shabakaty/downloader/gr3$a;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.1.1"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/gr3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/shabakaty/downloader/fr3;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/shabakaty/downloader/pj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/pj3<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/shabakaty/downloader/pj3;)V
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Lcom/shabakaty/downloader/pj3;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RemoteT:",
            "Lcom/shabakaty/downloader/fr3;",
            ">(",
            "Ljava/lang/Class<",
            "TRemoteT;>;",
            "Lcom/shabakaty/downloader/pj3<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/gr3$a;->a:Ljava/lang/Class;

    iput-object p2, p0, Lcom/shabakaty/downloader/gr3$a;->b:Lcom/shabakaty/downloader/pj3;

    return-void
.end method
