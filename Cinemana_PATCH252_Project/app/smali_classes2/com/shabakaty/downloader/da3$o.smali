.class public final Lcom/shabakaty/downloader/da3$o;
.super Lcom/shabakaty/downloader/da3;
.source "ParameterHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/da3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "o"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/da3<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/da3;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/da3$o;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/zr3;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/zr3;",
            "TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/da3$o;->a:Ljava/lang/Class;

    .line 2
    iget-object p1, p1, Lcom/shabakaty/downloader/zr3;->e:Lcom/shabakaty/downloader/vr3$a;

    invoke-virtual {p1, v0, p2}, Lcom/shabakaty/downloader/vr3$a;->i(Ljava/lang/Class;Ljava/lang/Object;)Lcom/shabakaty/downloader/vr3$a;

    return-void
.end method
