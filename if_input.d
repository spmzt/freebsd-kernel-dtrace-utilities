# pragma D option quiet

fbt:kernel:if_input:entry
{
    IFNAMSIZ = 16;
    printf("Entering if_input...\n");
    this->m = (struct mbuf *)arg1;
    this->ifp = (struct ifnet *)arg0;
    this->m_pkthdr = (struct pkthdr *)&this->m->m_pkthdr;
    printf("ifp address %p\n", this->ifp);
    printf("  if_xname: %s\n", this->ifp->if_xname);
    printf("  if_link\n");
    printf("  if_clones\n");
    printf("  if_groups\n");
    printf("  if_alloctype: %u\n", this->ifp->if_alloctype);
    printf("  if_numa_domain: %u\n", this->ifp->if_numa_domain);
    printf("  if_softc: %p\n", this->ifp->if_softc);
    printf("  if_llsoftc: %p\n", this->ifp->if_llsoftc);
    printf("  if_l2com: %p\n", this->ifp->if_l2com);
    printf("  if_dname: %s\n", (string)this->ifp->if_dname);
    printf("  if_dunit: %d\n", this->ifp->if_dunit);
    printf("  if_index: %u\n", this->ifp->if_index);
    printf("  if_idxgen: %u\n", this->ifp->if_idxgen);
    printf("  if_xname: %s\n", this->ifp->if_xname);
    printf("  if_description: %p\n", this->ifp->if_description);
    printf("  if_flags: %d\n", this->ifp->if_flags);
    printf("  if_drv_flags: %d\n", this->ifp->if_drv_flags);
    printf("  if_capabilities: %d\n", this->ifp->if_capabilities);
    printf("  if_capabilities2: %d\n", this->ifp->if_capabilities2);
    printf("  if_capenable: %d\n", this->ifp->if_capenable);
    printf("  if_capenable2: %d\n", this->ifp->if_capenable2);
    printf("  if_linkmib: %p\n", this->ifp->if_linkmib);
    printf("  if_linkmiblen: %p\n", this->ifp->if_linkmiblen);
    printf("  if_refcount: %u\n", this->ifp->if_refcount);
    printf("  if_type: %u\n", this->ifp->if_type);
    printf("  if_addrlen: %u\n", this->ifp->if_addrlen);
    printf("  if_hdrlen: %u\n", this->ifp->if_hdrlen);
    printf("  if_link_state: %u\n", this->ifp->if_link_state);
    printf("  if_mtu: %u\n", this->ifp->if_mtu);
    printf("  if_metric: %u\n", this->ifp->if_metric);
    printf("  if_baudrate: %lu\n", this->ifp->if_baudrate);
    printf("  if_hwassist: %lu\n", this->ifp->if_hwassist);
    printf("  if_epoch: %ld\n", this->ifp->if_epoch);
    printf("  if_lastchange: %p\n", &this->ifp->if_lastchange);
    printf("  if_snd\n");
    printf("  if_linktask\n");
    printf("  if_addmultitask\n");
    printf("  if_addr_lock\n");
    printf("  if_addrhead\n");
    printf("  if_multiaddrs\n");
    printf("  if_amcount: %d\n", this->ifp->if_amcount);
    printf("  if_addr: %p\n", this->ifp->if_addr);
    printf("  if_hw_addr: %p\n", this->ifp->if_hw_addr);
    printf("  if_broadcastaddr: %p\n", this->ifp->if_broadcastaddr);
    printf("  if_afdata_lock\n");
    printf("  if_afdata\n");
    printf("  if_afdata_initialized: %d\n", this->ifp->if_afdata_initialized);
    printf("  if_fib: %u\n", this->ifp->if_fib);
    printf("  if_vnet: %p\n", this->ifp->if_vnet);
    printf("    if_vnet->vnet_magic_n: %u\n", this->ifp->if_vnet->vnet_magic_n);
    printf("    if_vnet->vnet_ifcnt: %u\n", this->ifp->if_vnet->vnet_ifcnt);
    printf("    if_vnet->vnet_sockcnt: %u\n", this->ifp->if_vnet->vnet_sockcnt);
    printf("    if_vnet->vnet_state: %u\n", this->ifp->if_vnet->vnet_state);
    printf("  if_home_vnet: %p\n", this->ifp->if_home_vnet);
    printf("  if_vlantrunk: %p\n", this->ifp->if_vlantrunk);
    printf("  if_bpf: %p\n", this->ifp->if_bpf);
    printf("  if_pcount: %d\n", this->ifp->if_pcount);
    printf("  if_bridge: %p\n", this->ifp->if_bridge);
    printf("  if_lagg: %p\n", this->ifp->if_lagg);
    printf("  if_pf_kif: %p\n", this->ifp->if_pf_kif);
    printf("  if_carp: %p\n", this->ifp->if_carp);
    printf("  if_label: %p\n", this->ifp->if_label);
    printf("  if_netmap: %p\n", this->ifp->if_netmap);
    printf("  if_output\n");
    printf("  if_input\n");
    printf("  if_bridge_input\n");
    printf("  if_bridge_output\n");
    printf("  if_bridge_linkstate\n");
    printf("  if_start\n");
    printf("  if_ioctl\n");
    printf("  if_init\n");
    printf("  if_resolvemulti\n");
    printf("  if_qflush\n");
    printf("  if_transmit\n");
    printf("  if_reassign\n");
    printf("  if_get_counter\n");
    printf("  if_requestencap\n");
    printf("  if_counters\n");
    printf("  if_hw_tsomax: %u\n", this->ifp->if_hw_tsomax);
    printf("  if_hw_tsomaxsegcount: %u\n", this->ifp->if_hw_tsomaxsegcount);
    printf("  if_hw_tsomaxsegsize: %u\n", this->ifp->if_hw_tsomaxsegsize);
    printf("  if_snd_tag_alloc\n");
    printf("  if_ratelimit_query\n");
    printf("  if_ratelimit_setup\n");
    printf("  if_pcp: %u\n", this->ifp->if_pcp);
    printf("  if_debugnet_methods\n");
    printf("  if_epoch_ctx\n");
    printf("  if_ispare[0]: %d\n", this->ifp->if_ispare[0]);
    printf("  if_ispare[1]: %d\n", this->ifp->if_ispare[1]);
    printf("  if_ispare[2]: %d\n", this->ifp->if_ispare[2]);
    printf("  if_ispare[3]: %d\n", this->ifp->if_ispare[3]);
    printf("\n");
    printf("mbuf address %p\n", this->m);
    printf("  m_len: %d\n", this->m->m_len);
    printf("  m_type: %u\n", this->m->m_type);
    printf("  m_flags: %u\n", this->m->m_flags);
    printf("  m_data: %p\n", this->m->m_data);
    printf("  m_next: %p\n", this->m->m_next);
    printf("  m_pkthdr address %p\n", this->m_pkthdr);
    printf("    len: %d\n", this->m_pkthdr->len);
    printf("    csum_flags: %u\n", this->m_pkthdr->csum_flags);
    printf("    flowid: %u\n", this->m_pkthdr->flowid);
    printf("    fibnum: %u\n", this->m_pkthdr->fibnum);
    printf("    numa_domain: %u\n", this->m_pkthdr->numa_domain);
    printf("    rsstype: %u\n", this->m_pkthdr->rsstype);
}
