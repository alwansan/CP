.class Lzendesk/support/request/CellSystemMessages$CellRequestStatus;
.super Lzendesk/support/request/CellBase;
.source "CellSystemMessages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/request/CellSystemMessages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CellRequestStatus"
.end annotation


# instance fields
.field private final requestStatus:Lzendesk/support/RequestStatus;


# direct methods
.method public constructor <init>(Lzendesk/support/request/CellBindHelper;Lzendesk/support/RequestStatus;)V
    .locals 8

    .line 1
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    const v2, 0x7f0d0136

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/32 v5, -0x80000000

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lzendesk/support/request/CellBase;-><init>(Lzendesk/support/request/CellBindHelper;IJJLjava/util/Date;)V

    .line 2
    iput-object p2, p0, Lzendesk/support/request/CellSystemMessages$CellRequestStatus;->requestStatus:Lzendesk/support/RequestStatus;

    return-void
.end method


# virtual methods
.method public areContentsTheSame(Lzendesk/support/request/CellType$Base;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lzendesk/support/request/CellSystemMessages$CellRequestStatus;

    return p1
.end method

.method public bind(Lzendesk/support/request/ComponentRequestAdapter$RequestViewHolder;)V
    .locals 2

    const v0, 0x7f0a03ab

    .line 1
    invoke-virtual {p1, v0}, Lzendesk/support/request/ComponentRequestAdapter$RequestViewHolder;->findCachedView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 2
    iget-object v0, p0, Lzendesk/support/request/CellSystemMessages$CellRequestStatus;->requestStatus:Lzendesk/support/RequestStatus;

    sget-object v1, Lzendesk/support/RequestStatus;->Closed:Lzendesk/support/RequestStatus;

    if-ne v0, v1, :cond_0

    const v0, 0x7f120233

    .line 3
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method
