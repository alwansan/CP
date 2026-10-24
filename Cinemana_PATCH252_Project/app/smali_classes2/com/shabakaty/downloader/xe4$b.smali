.class public Lcom/shabakaty/downloader/xe4$b;
.super Ljava/lang/Object;
.source "SuasStore.java"

# interfaces
.implements Lcom/shabakaty/downloader/mf4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/xe4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/qi2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/qi2<",
            "Lcom/shabakaty/downloader/i2<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final synthetic b:Lcom/shabakaty/downloader/xe4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/xe4;Lcom/shabakaty/downloader/qi2;Lcom/shabakaty/downloader/xe4$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/xe4$b;->b:Lcom/shabakaty/downloader/xe4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/xe4$b;->a:Lcom/shabakaty/downloader/qi2;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xe4$b;->b:Lcom/shabakaty/downloader/xe4;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/xe4;->g:Ljava/util/Set;

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/xe4$b;->a:Lcom/shabakaty/downloader/qi2;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xe4$b;->b:Lcom/shabakaty/downloader/xe4;

    iget-object v1, p0, Lcom/shabakaty/downloader/xe4$b;->a:Lcom/shabakaty/downloader/qi2;

    .line 2
    iget-object v2, v0, Lcom/shabakaty/downloader/xe4;->f:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/xe4;->g:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
