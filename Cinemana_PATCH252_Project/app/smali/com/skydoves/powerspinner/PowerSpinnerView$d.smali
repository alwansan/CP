.class public final Lcom/skydoves/powerspinner/PowerSpinnerView$d;
.super Ljava/lang/Object;
.source "PowerSpinnerView.kt"

# interfaces
.implements Lcom/shabakaty/downloader/x63;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/skydoves/powerspinner/PowerSpinnerView;->setOnSpinnerItemSelectedListener(Lcom/shabakaty/downloader/ln1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/x63<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/ln1;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ln1;)V
    .locals 0

    iput-object p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$d;->a:Lcom/shabakaty/downloader/ln1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;ITT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$d;->a:Lcom/shabakaty/downloader/ln1;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/shabakaty/downloader/ln1;->k(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
