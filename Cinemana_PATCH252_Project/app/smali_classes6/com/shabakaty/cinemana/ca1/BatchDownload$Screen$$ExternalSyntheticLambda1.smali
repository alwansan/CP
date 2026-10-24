.class public final synthetic Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 0
    check-cast p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;

    check-cast p2, Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;

    invoke-static {p1, p2}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->lambda$loadEpisode$14(Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;Lcom/shabakaty/cinemana/ca1/BatchDownload$Variant;)I

    move-result p1

    return p1
.end method
